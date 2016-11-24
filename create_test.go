package garden_performance_acceptance_tests_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"

	"sync"

	"code.cloudfoundry.org/garden"
)

var _ = Describe("Create", func() {
	Measure("must take less than N seconds for each container", func(b Benchmarker) {
		waitGroup := sync.WaitGroup{}

		for i := 0; i < 5; i++ {
			waitGroup.Add(1)

			go func() {
				defer waitGroup.Done()
				defer GinkgoRecover()

				createTime := b.Time("create", func() {
					_, err := gardenClient.Create(garden.ContainerSpec{})
					Expect(err).NotTo(HaveOccurred())
				})

				Expect(createTime.Seconds()).To(BeNumerically("<", 0.1))
			}()
		}

		waitGroup.Wait()
	}, 1)
})
