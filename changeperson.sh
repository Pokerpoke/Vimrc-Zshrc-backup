#!/bin/bash

echo "$USER"

sed -n '5p' zshrc.bak
sed -n '5s/pi/$USER/' zshrc.bak
