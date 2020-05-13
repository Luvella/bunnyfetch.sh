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
	printf "$USERNAME@$HOSTNAME"
}

os() {
	case "$(uname -s)" in
		CYGWIN*|MSYS*|MINGW*)
            printf "$(wmic os get Caption | grep Windows)"
        ;;

        *)
			exit 1
		;;
	esac
}
# (\ /)
# ( . .)
# c(")(")

bunny() {
cat << EOF
	    $c1$(title)$r
	    OS: $(os)
   (\ /)
   ( . .)
   c($c1"$r)($c1"$r)
EOF
}

bunny