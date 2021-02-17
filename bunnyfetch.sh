#!/bin/bash
# Tiny colored fetch script
# Requires Typicons Font to display the icons
# elenapan @ github
# Modified by TorchedSammy

c=3 cb=4
for j in c cb; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done

r=$'\e[0m'
v=$'\e[7m'
b=$'\e[1m'

colors() {
        if [ $1 ]; then
                for i in {0..7}; do
                        printf "\e[10${i}m   "
                done
        else
                for i in {0..7}; do
                        printf "\e[4${i}m   "
                done
        fi
}

title="$USER@$HOSTNAME"
# Items
sep=
s=$d$f0$sep$t

os="$(lsb_release -sd)"
wmname="$(xprop -id $(xprop -root -notype | awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}') -notype -f _NET_WM_NAME 8t | grep "WM_NAME" | cut -f2 -d \")"
kernel="$(uname -r | cut -d '-' -f1)"
resolution="$(xwininfo -root | grep geometry | awk '{print $2}' | cut -d + -f1)"
shell=$(basename $SHELL)

# (\ /)
# ( · ·)
# c(")(")

# (\ /)
# ( . .)
# c(")(")

cat << EOF
            $c1$title$r
           $c2 OS $r$os
   (\ /)   $c3 Kernel $r$kernel
   ( . .)  $c4 Shell $r$shell
   c($c1"$r)($c1"$r) $c5 WM $r$wmname

            $(colors)$r
            $(colors z)$r
            
EOF
