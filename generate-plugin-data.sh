#!/bin/bash
# Created by Sam Gleske
# Thu 17 Mar 2022 10:44:58 PM EDT
# Ubuntu 20.04.4 LTS
# Linux 5.13.0-35-generic x86_64
# GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
# Docker version 20.10.13, build a224086
# Python 3.10.3

if ! type -P docker; then
  echo 'ERROR: requires docker to generate' >&2
fi

if  [ ! -d ../endless-sky ]; then
  echo 'ERROR: requires endless-sky to be cloned in the same location as this repo.' >&2
fi

if [ ! -d data ]; then
  mkdir data
fi

cp -f metadata/const.txt data/const.txt

# Docker options explained
#   -v mount the current directory and endless sky data as volumes.
#   -w set the working directory to be the same as this repo
#   --user set the user inside of the container to match the host (assumes running docker as normal user)
#   Mounting endless-sky/data:ro means to mount it as a readonly volume within container
#   python:3.10.3 is the image name
docker run -it --rm \
  -v "$PWD":"$PWD" \
  -w "$PWD" \
  --user "$(id -u):$(id -g)" \
  -v "$PWD"/../endless-sky/data:'/.steam/steam/steamapps/common/Endless Sky/data':ro \
  python:3.10.3 \
  python3 generate.py
