#!/bin/bash
set -e
cd $PWD
read -p "changed to ${PWD}; ENTER to proceed!"
for i in *.png
do
  convert $i ${i%.png}.gif
done

if [[ -d GIFs/ ]]
then
  mv GIFs GIFs_org
  echo "GIFs folder exists; moving orginal directory as GIFs_org"
else
  mkdir GIFs
fi
mv *.gif GIFs/
convert -delay ${1:-30} GIFs/*.gif animation.gif
echo "<===animation created===>"
read -p "Press Enter to delete GIF files"
rm -rf GIFs
