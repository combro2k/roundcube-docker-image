#!/bin/bash

docker run -ti --rm --name roundcube -P combro2k/nginx-roundcube:latest ${@}
