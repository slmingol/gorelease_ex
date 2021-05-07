dryrun:
	goreleaser --snapshot --skip-publish --rm-dist
build:
	goreleaser build
release:
	goreleaser release --skip-publish
