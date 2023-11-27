module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.20

require (
	code.cloudfoundry.org/garden v0.0.0-20231114181656-4c2a4ae2aad0
	code.cloudfoundry.org/lager/v3 v3.0.2
	github.com/onsi/ginkgo/v2 v2.13.1
	github.com/onsi/gomega v1.30.0
	github.com/wavefronthq/wavefront-sdk-go v0.15.0
)

require (
	github.com/bmizerany/pat v0.0.0-20210406213842-e4b6760bdd6f // indirect
	github.com/caio/go-tdigest/v4 v4.0.1 // indirect
	github.com/go-logr/logr v1.3.0 // indirect
	github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572 // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	github.com/google/pprof v0.0.0-20231101202521-4ca4178f5c7a // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/openzipkin/zipkin-go v0.4.2 // indirect
	github.com/tedsuo/rata v1.0.0 // indirect
	golang.org/x/net v0.19.0 // indirect
	golang.org/x/sys v0.15.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	golang.org/x/tools v0.16.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace code.cloudfoundry.org/garden => ../garden
