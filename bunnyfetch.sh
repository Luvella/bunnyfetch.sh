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
v=$'\e[7m'

colors() {
	for i in {0..7}; do
    	printf "\e[4${i}m   "
	done
}
# Items
title() {
	printf "$USERNAME@$HOSTNAME"
}

os() {
	case "$(uname -s)" in
		CYGWIN*|MSYS*|MINGW*) wmic os get Caption | grep Windows ;;

        Linux*) uname -s ;;

        *) exit 1 ;;
	esac
}
# (\ /)
# ( . .)
# c(")(")

bunny() {
cat << EOF
	    $c1$(title)$r
	   $c2 OS $r$(os)
   (\ /)
   ( . .)
   c($c1"$r)($c1"$r)
	    $(colors)$r

EOF
}

bunny