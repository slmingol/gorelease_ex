export GO_RELEASER_HOMEBREW_TOKEN = "${HOMEBREW_GITHUB_API_TOKEN}"

dryrun:
	goreleaser --snapshot --skip-publish --rm-dist
build:
	goreleaser build --rm-dist --debug
tag:
	./version-up.sh --patch --apply
release:
	goreleaser release #--skip-publish
