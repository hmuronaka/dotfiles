#!/bin/sh

# .bash_profileに以下の追加するとmacのターミナルに表示することができます。
# source gulp-prompt.sh
#
# $(__gulp_ps_1)が追加箇所です。
# export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\W:$(__gulp_ps1_)$(__git_ps1)\[\033[00m\]\$'

__get_dir_path() {
  dir=$1
  file=$2
  cmd="find ${dir} -maxdepth 1 -type d -name ${file}"
  echo `$cmd`
}

__get_file_path() {
  dir=$1
  file=$2
  cmd="find ${dir} -maxdepth 1 -type f -name ${file}"
  echo `$cmd`
}

read_username() {
  file=$1
  pattern="s/\"username\":[ ]*\"\\(.*\\)\",/\\1/p"
  cmd=`sed -n "${pattern}" ${file}`
  echo $cmd
}

__gulp_ps1_() {
  config_path=`__get_dir_path . config`
  if [ -n "${config_path}" ]; then
    deployJSON=`__get_file_path "$config_path" deploy.json`
    if [ -n "${deployJSON}" ]; then
      echo `read_username ${deployJSON}`
    fi
  fi
  # 現在パスから辿ってconfigディレクトリのあるパスを取得する
  # configディレクトリのパスからdeploy.jsonを取得する
  # deploy.jsonのusernameを取得する
  # 変数に格納する
}

