#!/bin/sh
dpkg --get-selections | grep -v deinstall > pkg-baseline.txt
