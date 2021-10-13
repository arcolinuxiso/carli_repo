#!/bin/bash

cd x86_64
sh update_repo.sh

git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

#read input
input="update"
# Committing to the local repository with a message containing the commit text

git commit -m "$input"

# Push the local files to github

git push -u origin master

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
