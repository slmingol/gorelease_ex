# gorelease_ex

## Statuses
[![artifact-janitor](https://github.com/slmingol/gorelease_ex/actions/workflows/artifact-janitor.yml/badge.svg)](https://github.com/slmingol/gorelease_ex/actions/workflows/artifact-janitor.yml)
[![build-release](https://github.com/slmingol/gorelease_ex/actions/workflows/build-release.yml/badge.svg)](https://github.com/slmingol/gorelease_ex/actions/workflows/build-release.yml)
![badge](https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/slmingol/189c77409e1e73465aae3b2639d162ae/raw/answer.json)


## TLDR
The gorelease_ex project is an example repo that demonstrates tying several technologies and concepts together, mainly:

- goreleaser
- Docker container packaging
- GitHub Actions + Workflows
- Brew packaging
- Releasing and lifecycle management around:
  - ghcr.io
  - hub.docker.com


## Background
This repo is a WIP to build out goreleaser + GitHub Actions/Workflows which will accomplish the following things:

- Make use of [goreleaser](https://goreleaser.com/) to build artifacts - [here](https://github.com/slmingol/gorelease_ex/blob/main/.goreleaser.yml)
- [Build, package, & release](https://github.com/slmingol/gorelease_ex/blob/main/.github/workflows/build-release.yml) Go applications using GitHub's [Release tab on this repo](https://github.com/slmingol/gorelease_ex/releases)
- Build Docker containers using [GitHub's Container Registry (ghcr.io)](https://github.com/users/slmingol/packages/container/package/gorelease_ex_) & [DockerHub (hub.docker.com)](https://hub.docker.com/repository/docker/slmingol/gorelease_ex)
- Build an installable [Brew TAP and add binaries to it](https://github.com/slmingol/homebrew-tap)
- Demonstrate how to do all this using just [goreleaser](https://goreleaser.com/) + GitHub workflows + actions
- Build out a [janitor GitHub workflow](https://github.com/slmingol/gorelease_ex/blob/main/.github/workflows/artifact-janitor.yml) that'll "reap" old artifacts and containers from ghrc.io & hub.docker.com


## References

### GitHub Artifacts (packages + containers)
- https://docs.github.com/en/packages/learn-github-packages/viewing-packages
- https://docs.github.com/en/packages

### GH Actions
- https://github.com/marketplace/actions/debugging-with-tmate
- https://github.com/marketplace/actions/docker-login
- https://github.com/dev-drprasad/delete-older-releases

### Goreleaser
- https://goreleaser.com/customization/homebrew/
- https://goreleaser.com/customization/build/
- https://goreleaser.com/customization/docker/
- https://goreleaser.com/customization/docker_manifest/
