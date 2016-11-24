package garden_performance_acceptance_tests_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"

	"os"
	"testing"

	"code.cloudfoundry.org/garden"
	"code.cloudfoundry.org/garden/client"
	"code.cloudfoundry.org/garden/client/connection"
)

var (
	gardenClient garden.Client
)

func TestGardenPerformanceAcceptanceTests(t *testing.T) {
	BeforeEach(func() {
		gardenHost := os.Getenv("GARDEN_ADDRESS")
		if gardenHost == "" {
			gardenHost = "127.0.0.1:7777"
		}
		gardenClient = client.New(connection.New("tcp", gardenHost))

		// ensure a 'clean' starting state
		cleanupContainers()
	})

	RegisterFailHandler(Fail)
	RunSpecs(t, "GardenPerformanceAcceptanceTests Suite")
}

func cleanupContainers() {
	containers, err := gardenClient.Containers(garden.Properties{})
	Expect(err).NotTo(HaveOccurred())

	for _, container := range containers {
		Expect(gardenClient.Destroy(container.Handle())).To(Succeed())
	}
}
