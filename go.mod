module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.12

require (
	code.cloudfoundry.org/garden v0.0.0-00010101000000-000000000000
	code.cloudfoundry.org/lager v2.0.0+incompatible
	github.com/cenkalti/backoff v0.0.0-20161020194410-b02f2bbce11d // indirect
	github.com/onsi/ginkgo v1.9.0
	github.com/onsi/gomega v1.5.0
	github.com/zorkian/go-datadog-api v0.0.0-20161114235736-01be5a905087
)

replace code.cloudfoundry.org/garden => ../garden-runc-release/src/garden
