#!/bin/sh
# Tiny colored fetch script
# Idea by elenapan, fixed and refactored by TorchedSammy

# (\ /)
# ( · ·)
# c(")(")

c=3 b=4
for j in c b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
r=$'\e[0m'

# Items
title() {
	echo "$USERNAME@$HOSTNAME"
}

# (\ /)
# ( . .)
# c(")(")

bunny() {
cat << EOF
	    $c1$(title)$r

   (\ /)
   ( . .)
   c($c1"$r)($c1"$r)
EOF
}

bunny