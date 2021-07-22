#!/bin/sh

pip3 install isort pycodestyle pyflakes

ln -sf `pwd`/multihook.py ../.git/hooks/pre-commit

rm -rf "../.git/hooks/pre-commit.d"
ln -sf `pwd`/pre-commit.d ../.git/hooks
