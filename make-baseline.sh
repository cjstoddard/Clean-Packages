#!/bin/sh
set -e
dpkg --get-selections | grep -v deinstall > pkg-baseline.txt
