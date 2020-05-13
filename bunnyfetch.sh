#!/bin/sh
# Tiny colored fetch script
# Idea by elenapan, fixed and refactored by TorchedSammy

# (\ /)
# ( · ·)
# c(")(")

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

# Items
title() {
	echo "$USERNAME@$HOSTNAME "
}

# (\ /)
# ( . .)
# c(")(")

bunny() {
cat << EOF
	    $(eval title)

   (\ /)
   ( $d. .)
   c($f1"$t)($f1"$t)
EOF
}

bunny