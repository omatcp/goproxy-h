#!/bin/bash
cd ~

rm -rf goproxy-h

git clone https://github.com/omatcp/gorun.git

cd goproxy-h

rm -rf .git

git init .

heroku create

chmod +x bootstrap proxy release.sh

./release.sh
