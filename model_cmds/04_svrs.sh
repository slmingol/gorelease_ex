#!/usr/bin/env bash

# $ dscacheutil -q host -a name ocp-app-01a.lab1.bandwidthclec.local
# name: ocp-app-01a.lab1.bandwidthclec.local
# ip_address: 192.168.113.138


### MacOS


# check for DNS lookup results for well known servers

# lab1, rdu1, atl1, dfw1, jfk1, lax2
for site in lab1 rdu1 dfw1 jfk1 lax2; do
    dscacheutil -q host -a name ocp-master-01a.${site}.bandwidthclec.local
    dscacheutil -q host -a name ocp-app-01a.${site}.bandwidthclec.local
    dscacheutil -q host -a name idm-01a.${site}.bandwidthclec.local
    dscacheutil -q host -a name idm-01b.${site}.bandwidthclec.local
done

# $ printf "get State:/Network/Service/com.cisco.anyconnect/DNS\nd.show\n" | scutil
# <dictionary> {
#   DomainName : bandwidth.local
#   SearchDomains : <array> {
#     0 : bandwidth.local
#   }
#   SearchOrder : 1
#   ServerAddresses : <array> {
#     0 : 10.5.0.18
#     1 : 10.5.0.19
#     2 : 192.168.7.85
#   }
#   SupplementalMatchDomains : <array> {
#     0 :
#     1 : bandwidth.local
#   }
# }


