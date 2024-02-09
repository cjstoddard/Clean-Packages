#!/bin/sh
set -e
dpkg --get-selections | grep -v deinstall > package-chk.txt
