#!/bin/bash

# (re)create dist/ folder
/usr/bin/rm -rf ./dist
/usr/bin/mkdir ./dist

for src_path in *.md; do
  dst_path="dist/${src_path/.md/.html}"
  echo "<meta charset='utf-8'>" > $dst_path
  /bin/markdown $src_path >> $dst_path
done
