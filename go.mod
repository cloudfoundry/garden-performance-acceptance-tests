module code.cloudfoundry.org/garden-performance-acceptance-tests

go 1.20

require (
	code.cloudfoundry.org/garden v0.0.0-20210608104724-fa3a10d59c82
	code.cloudfoundry.org/lager/v3 v3.0.1
	github.com/onsi/ginkgo/v2 v2.9.5
	github.com/onsi/gomega v1.27.6
	github.com/wavefronthq/wavefront-sdk-go v0.13.0
)

require (
	github.com/bmizerany/pat v0.0.0-20210406213842-e4b6760bdd6f // indirect
	github.com/caio/go-tdigest v3.1.0+incompatible // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/pprof v0.0.0-20230510103437-eeec1cb781c3 // indirect
	github.com/openzipkin/zipkin-go v0.4.1 // indirect
	github.com/tedsuo/rata v1.0.0 // indirect
	golang.org/x/net v0.10.0 // indirect
	golang.org/x/sys v0.8.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	golang.org/x/tools v0.9.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace code.cloudfoundry.org/garden => ../garden
