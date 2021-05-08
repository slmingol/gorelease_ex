dryrun:
	goreleaser --snapshot --skip-publish --rm-dist
build:
	goreleaser build --rm-dist
tag:
	./version-up.sh --patch --apply
	echo ''
release:
	goreleaser release #--skip-publish
