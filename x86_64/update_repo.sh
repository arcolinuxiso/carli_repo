#!/bin/bash

rm carli_repo*

echo "repo-add"
repo-add -s -n -R carli_repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm carli_repo.db
rm carli_repo.db.sig

rm carli_repo.files
rm carli_repo.files.sig

mv carli_repo.db.tar.gz carli_repo.db
mv carli_repo.db.tar.gz.sig carli_repo.db.sig

mv carli_repo.files.tar.gz carli_repo.files
mv carli_repo.files.tar.gz.sig carli_repo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
