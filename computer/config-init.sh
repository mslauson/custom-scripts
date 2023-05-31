#!/bin/bash

git -C ~/projects/config/wm-config pull
./~/projects/config/wm-config/init.sh
git -C ~/projects/config/term-config pull
./~/projects/config/term-config/init.sh
git -C ~/projects/config/astro-config pull
./~/projects/config/astro-config/init.sh
