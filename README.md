# Clean-Packages

This is a set of shell scripts that lets you return a Debian or Ubuntu system back to a previous state. The use case being, you want to experiment with a program that will require you to install a bunch of packages and when you are done, you want to be able to remove them without much fuss.

make-baseline.sh: This is the first script to be run, it writes the file pkg-baseline.txt which has a list of all your currently installed packages. Put this someplace safe.

chk-packages.sh: This is the script you run after you are finished doing whatever it was you where doing. It does the same thing make-baseline.sh, except it writes the file package-chk.txt, which contains the current list of packages.

clean-pkgs.sh: This is the final script to be run. Place both pkg-baseline.txt and package-chk.txt in the same folder and then run this script in that folder. This script uses diff and sed to build a list of packages that were installed after make-baseline.sh was run and then proceeds to uninstall all of those packages using apt purge.


Disclaimer: This software is provided "AS IS", without warranty of any kind, express or implied, including but not limited to warranties of merchantability, fitness for a paticular purpose and nonifringment. In no event shall the author or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.
