#!/bin/sh
dpkg --get-selections | grep -v deinstall > package-chk.txt
