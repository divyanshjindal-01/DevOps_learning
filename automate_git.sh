#!/bin/bash

./system_info.sh > report.txt
git add . 
echo "enter commit message"
read commit;
git commit -m"$commit"
git status;
echo "ready to push?? (y/n)"
read cnfm
if [ "$cnfm" == "y" ]
then
	git push origin main
fi
