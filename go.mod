module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.23.0

toolchain go1.23.6

require (
	code.cloudfoundry.org/garden v0.0.0-20250730020702-3c607f063fc6
	code.cloudfoundry.org/lager/v3 v3.42.0
	github.com/onsi/ginkgo/v2 v2.23.4
	github.com/onsi/gomega v1.38.0
	github.com/wavefronthq/wavefront-sdk-go v0.15.0
)

require (
	github.com/bmizerany/pat v0.0.0-20210406213842-e4b6760bdd6f // indirect
	github.com/caio/go-tdigest/v4 v4.0.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-task/slim-sprig/v3 v3.0.0 // indirect
	github.com/google/go-cmp v0.7.0 // indirect
	github.com/google/pprof v0.0.0-20250630185457-6e76a2b096b5 // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/openzipkin/zipkin-go v0.4.3 // indirect
	github.com/tedsuo/rata v1.0.0 // indirect
	go.uber.org/automaxprocs v1.6.0 // indirect
	golang.org/x/net v0.42.0 // indirect
	golang.org/x/sys v0.34.0 // indirect
	golang.org/x/text v0.27.0 // indirect
	golang.org/x/tools v0.35.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace code.cloudfoundry.org/garden => ../garden
