package garden_performance_acceptance_tests_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"

	"sync"

	"code.cloudfoundry.org/garden"
	"code.cloudfoundry.org/garden-performance-acceptance-tests/measurements"
	"code.cloudfoundry.org/garden-performance-acceptance-tests/reporter"
)

const (
	ContainerCreation = "ContainerCreation"
)

var _ = Describe("Create", func() {
	AfterEach(func() {
		cleanupContainers()
	})

	Measure("must take less than 1.5 seconds for each container", func(b Benchmarker) {
		createTimes := measurements.Measurements{}
		waitGroup := sync.WaitGroup{}

		for i := 0; i < 5; i++ {
			waitGroup.Add(1)

			go func() {
				defer waitGroup.Done()
				defer GinkgoRecover()

				for j := 0; j < 1; j++ {
					createTime := b.Time("create", func() {
						_, err := gardenClient.Create(
							garden.ContainerSpec{
							// Limits: garden.Limits{
							// 	Disk: garden.DiskLimits{
							// 		ByteHard: 1024 * 1024,
							// 	},
							// },
							},
						)
						Expect(err).NotTo(HaveOccurred())
					},
						reporter.ReporterInfo{
							MetricName: ContainerCreation,
						},
					)
					createTimes = append(createTimes, createTime.Seconds())
				}

			}()
		}

		waitGroup.Wait()

		averageCreateTime, err := createTimes.Average()
		Expect(err).NotTo(HaveOccurred())

		Conditionally(func() {
			Expect(averageCreateTime).To(BeNumerically("<", 1.5))
		}, !ignorePerfExpectations)
	}, 1)
})
