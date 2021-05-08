dryrun:
	goreleaser --snapshot --skip-publish --rm-dist
build:
	goreleaser build --rm-dist
release:
	goreleaser release #--skip-publish
