#!/usr/bin/env bash
set -e
REPO="gaosandgg/civilcruiserhub"
TAG="cosmic-forest-frosty-cedar"
LIB="ruined-rocket.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
