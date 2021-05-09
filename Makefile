export GITHUB_TOKEN = ${GO_RELEASER_GITHUB_TOKEN}


dryrun:
	goreleaser --snapshot --skip-publish --rm-dist --debug
build:
	goreleaser build --rm-dist --debug
tag:
	./version-up.sh --patch --apply
release:
	goreleaser release --rm-dist


### Useful for debugging ###
#goreleaser release --skip-validate --rm-dist --debug #--skip-publish
