package garden_performance_acceptance_tests_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"

	"sync"

	"code.cloudfoundry.org/garden"
)

var _ = Describe("Create", func() {
	AfterEach(func() {
		cleanupContainers()
	})

	Measure("must take less than 1.5 seconds for each container", func(b Benchmarker) {
		waitGroup := sync.WaitGroup{}

		for i := 0; i < 5; i++ {
			waitGroup.Add(1)

			go func() {
				defer waitGroup.Done()
				defer GinkgoRecover()

				for j := 0; j < 40; j++ {
					createTime := b.Time("create", func() {
						_, err := gardenClient.Create(
							garden.ContainerSpec{
								Limits: garden.Limits{
									Disk: garden.DiskLimits{
										ByteHard: 2 * 1024 * 1024 * 1024,
									},
								},
							},
						)
						Expect(err).NotTo(HaveOccurred())
					})

					Expect(createTime.Seconds()).To(BeNumerically("<", 1.5))
				}

			}()
		}

		waitGroup.Wait()
	}, 1)
})
