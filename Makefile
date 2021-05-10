export GITHUB_TOKEN = ${GO_RELEASER_GITHUB_TOKEN}


dryrun:
	goreleaser --snapshot --skip-publish --rm-dist --debug
build:
	goreleaser build --rm-dist --debug
tag:
	scripts/version-up.sh --patch --apply
release:
	goreleaser release --rm-dist
commit:
	git add . ; git commit -m "Makefile commit" ; git push ; make tag


### Useful for debugging ###
#goreleaser release --skip-validate --rm-dist --debug #--skip-publish
