#!/bin/sh
set -e
diff -u pkg-baseline.txt package-chk.txt | grep -E "^\+" | sed -E 's/^\+//' | sed 's/install//g' | sed 's/-info//g' | sed '1d' > packages.txt
sed -i 's/\s*$//g' packages.txt
for i in $(cat packages.txt); do sudo apt purge $i -y; done
sudo apt autopurge -y
sudo apt clean
