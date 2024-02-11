#!/bin/sh

# Makes the script stop running if an error is detetced.
set -e

# Compares the two files and finds the packages installed after the baseline was created
# and then strips all the unneeded text.
diff -u pkg-baseline.txt package-chk.txt | grep -E "^\+" | sed -E 's/^\+//' | sed 's/install//g' | sed 's/-info//g' | sed '1d' > packages.txt

# Strips out the white space from the file 
sed -i 's/\s*$//g' packages.txt

# Removes the packages installed after the baseline was created.
for i in $(cat packages.txt); do sudo apt purge $i -y; done

# Cleans up unneeded dependencies and removes cached files.
sudo apt autopurge -y
sudo apt clean
