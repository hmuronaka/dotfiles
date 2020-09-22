#!/bin/sh
CMDS="
#llvm
peco
tig
the_silver_searcher
wget
fastlane
jq
carthage
ripgrep
pyenv
nkf
"

echo $CMDS
for app in $CMDS
do
  brew install $app
done
