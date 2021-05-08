FROM scratch
COPY gorelease_ex /usr/bin/gorelease_ex
ENTRYPOINT ["/usr/bin/gorelease_ex"]
