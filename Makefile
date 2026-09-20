dryrun:
	goreleaser --snapshot --skip-publish --clean --debug
build:
	goreleaser build --clean --debug
release:
	goreleaser release --clean


### Useful for debugging ###
#goreleaser release --skip-validate --clean --debug #--skip-publish
