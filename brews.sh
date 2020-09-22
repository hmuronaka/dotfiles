#!/bin/sh
CMDS="
#llvm
peco
"

echo $CMDS
for app in $CMDS
do
  brew install $app
done
