module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.22.0

toolchain go1.22.3

require (
	code.cloudfoundry.org/garden v0.0.0-20241015133258-e596c7c58892
	code.cloudfoundry.org/lager/v3 v3.10.0
	github.com/onsi/ginkgo/v2 v2.20.2
	github.com/onsi/gomega v1.34.2
	github.com/wavefronthq/wavefront-sdk-go v0.15.0
)

require (
	github.com/bmizerany/pat v0.0.0-20210406213842-e4b6760bdd6f // indirect
	github.com/caio/go-tdigest/v4 v4.0.1 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-task/slim-sprig/v3 v3.0.0 // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	github.com/google/pprof v0.0.0-20241009165004-a3522334989c // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/openzipkin/zipkin-go v0.4.3 // indirect
	github.com/tedsuo/rata v1.0.0 // indirect
	golang.org/x/net v0.30.0 // indirect
	golang.org/x/sys v0.26.0 // indirect
	golang.org/x/text v0.19.0 // indirect
	golang.org/x/tools v0.26.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace code.cloudfoundry.org/garden => ../garden
