#!/bin/bash
# Tiny colored fetch script
# Requires Typicons Font to display the icons
# elenapan @ github

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
sep=
s=$d$f0$sep$t

dt="OS"
distro="$(lsb_release -sd)"

h="WM"
wmname="$(xprop -id $(xprop -root -notype | awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}') -notype -f _NET_WM_NAME 8t | grep "WM_NAME" | cut -f2 -d \")"

k="Kernel"
kernel="$(uname -r | cut -d '-' -f1)"

r="Resolution"
resolution="$(xwininfo -root | grep geometry | awk '{print $2}' | cut -d + -f1)"

sh="Shell"
shell=$(basename $SHELL)

user=$USER
host=$HOSTNAME
# (\ /)
# ( · ·)
# c(")(")

# (\ /)
# ( . .)
# c(")(")

cat << EOF
	     $f2$user@$host
             $d$f1$dt $t$distro
   (\ /)     $f3$k $t$kernel
   ( $d. .$t)    $f2$sh $t$shell
   c($f1"$t)($f1"$t)   $f5$r $t$resolution
             $f4$h $t$wmname
EOF