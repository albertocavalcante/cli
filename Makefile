build:
	bazel build //src:cli
.PHONY: build

fmt:
	bazel run @rules_go//go -- fmt ./...
.PHONY: fmt

# go mod tidy is currently WIP
# https://github.com/bazelbuild/bazel-gazelle/pull/1495

tidy:
	bazel run @rules_go//go -- mod tidy -v
.PHONY: tidy

gazelle:
	bazel run //:gazelle
.PHONY: gazelle
