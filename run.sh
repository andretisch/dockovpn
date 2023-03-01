#!/usr/bin/env bash

docker run --cap-add=NET_ADMIN \
-v openvpn_conf:/opt/Dockovpn \
-p 443:1194/tcp -p 80:8080/tcp \
-e HOST_ADDR=localhost \
--rm \
alekslitvinenk/openvpn "$@"
