#!/bin/sh

ll() {
  num=0
  for f in $(CLICOLOR_FORCE=1 ls -GF); do
   #/bin/echo -n ${num}: ${f}
   echo ${num}: ${f}
   num=$(($num + 1))
  done
  /bin/echo -n "input dir num > "
  read DIR_NUM

  num=0
  for f in $(ls -G); do
   #/bin/echo -n ${num}: ${f}
   if [ $num -eq $DIR_NUM ]; then
     cd $f
     break
   fi
   num=$(($num + 1))
  done
}
