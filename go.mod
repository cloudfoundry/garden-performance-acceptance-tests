module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.20

require (
	code.cloudfoundry.org/garden v0.0.0-20240321140256-3cb1fc657e4d
	code.cloudfoundry.org/lager/v3 v3.0.3
	github.com/onsi/ginkgo/v2 v2.17.0
	github.com/onsi/gomega v1.32.0
	github.com/wavefronthq/wavefront-sdk-go v0.15.0
)

require (
	github.com/bmizerany/pat v0.0.0-20210406213842-e4b6760bdd6f // indirect
	github.com/caio/go-tdigest/v4 v4.0.1 // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572 // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	github.com/google/pprof v0.0.0-20240320155624-b11c3daa6f07 // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/openzipkin/zipkin-go v0.4.2 // indirect
	github.com/tedsuo/rata v1.0.0 // indirect
	golang.org/x/net v0.22.0 // indirect
	golang.org/x/sys v0.18.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	golang.org/x/tools v0.19.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace code.cloudfoundry.org/garden => ../garden
