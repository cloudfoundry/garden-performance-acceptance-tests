module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.16

require (
	code.cloudfoundry.org/garden v0.0.0-20210608104724-fa3a10d59c82
	code.cloudfoundry.org/lager v2.0.0+incompatible
	github.com/onsi/ginkgo v1.16.5
	github.com/onsi/gomega v1.18.1
	github.com/wavefronthq/wavefront-sdk-go v0.9.9
)

replace code.cloudfoundry.org/garden => ../garden
