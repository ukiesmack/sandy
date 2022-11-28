# sandy [![Test](https://github.com/ukiesmack/sandy/actions/workflows/test.yml/badge.svg)](https://github.com/ukiesmack/sandy/actions/workflows/test.yml) [![golangci-lint](https://github.com/ukiesmack/sandy/actions/workflows/lint.yml/badge.svg)](https://github.com/ukiesmack/sandy/actions/workflows/lint.yml) [![Go Report Card](https://goreportcard.com/badge/github.com/ukiesmack/sandy)](https://goreportcard.com/report/github.com/ukiesmack/sandy) [![Go Reference](https://pkg.go.dev/badge/github.com/ukiesmack/sandy.svg)](https://pkg.go.dev/github.com/ukiesmack/sandy) [![codecov](https://codecov.io/gh/ukiesmack/sandy/branch/main/graph/badge.svg?token=Y5K4SID71F)](https://codecov.io/gh/ukiesmack/sandy)

A fast file transfer utility


This template serves as a starting point for golang commandline applications it is based on golang projects that I consider high quality and various other useful blog posts that helped me understanding golang better.

# Project Layout
* [assets/](https://pkg.go.dev/github.com/ukiesmack/sandy/assets) => docs, images, etc
* [cmd/](https://pkg.go.dev/github.com/ukiesmack/sandy/cmd)  => commandline configurartions (flags, subcommands)
* [pkg/](https://pkg.go.dev/github.com/ukiesmack/sandy/pkg)  => packages that are okay to import for other projects
* [internal/](https://pkg.go.dev/github.com/ukiesmack/sandy/pkg)  => packages that are only for project internal purposes
- [`tools/`](tools/) => for automatically shipping all required dependencies when running `go get` (or `make bootstrap`) such as `golang-ci-lint` (see: https://github.com/golang/go/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module)
)

# Demo Application

```sh
$> sandy
golang-cli project template demo application

Usage:
  sandy [flags]
  sandy [command]

Available Commands:
  example     example subcommand which adds or multiplies two given integers
  help        Help about any command
  version     Displays d4sva binary version

Flags:
  -h, --help   help for sandy

Use "sandy [command] --help" for more information about a command.
```

```sh
$> sandy example 2 5 --add
7

$> sandy example 2 5 --multiply
10
```

# Makefile Targets
```sh
$> make
bootstrap                      install build deps
build                          build golang binary
clean                          clean up environment
cover                          display test coverage
docker-build                   dockerize golang application
fmt                            format go files
help                           list makefile targets
install                        install golang binary
lint                           lint go files
pre-commit                     run pre-commit hooks
run                            run the app
test                           display test coverage
```

# Contribute
If you find issues in sandy or have some nice features / improvements, I would welcome an issue or a PR :)
