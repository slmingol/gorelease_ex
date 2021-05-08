FROM scratch
COPY main1 /usr/bin/main1
ENTRYPOINT ["/usr/bin/main1"]
