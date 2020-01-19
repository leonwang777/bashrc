#!/bin/bash
cp -rfuv ~/.bashrc ~/bashrc
cp -rfuv ~/.bash_aliases ~/bashrc
cp -rfuv ~/.profile ~/bashrc
cp -rfuv ~/.tmux.conf ~/bashrc
cp -rfuv ~/bin ~/bashrc
pushd .
cd ~/bashrc
# git add new files
git diff --staged

read -p "Do you want to commit the change (Y/n) ?" ans
if [ $ans = "Y" ]
then
	read -p "Discriptive Message for Commit : " ans
 	git commit -m $ans
 	
 	read -p "Do you want to push the change to the repo of Github (Y/n) ?" ans
 	if [ $ans = "Y" ] 
 	then
 		 git push
 	else
 		echo "No push to repo ~"
 	fi
else
	echo "Skip the commit ~" 	
fi
popd
