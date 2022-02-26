#!/bin/sh

if [ $# == 0 ]; then
  echo 'ファイル名を指定してください'
  exit 1
fi

touch code/$1.rb
touch code/test/$1_test.rb