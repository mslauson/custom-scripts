#!/bin/zsh

lerna run build
lb
git commit -am "build"
lerna publish prepatch -y
