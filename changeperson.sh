#!/bin/bash

echo "$USER"

sed -n '5p' zshrc.bak1
sed -n '5s/pi/$USER/' zshrc.bak1
