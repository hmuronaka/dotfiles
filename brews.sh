#!/bin/sh
CMDS="
llvm
"

echo $CMDS
for app in $CMDS
do
  brew install $app
done
