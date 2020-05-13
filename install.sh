#!/bin/sh
PREFIX=${PREFIX:-/usr}

# TODO: add "$DESTDIR"; "install -Dm 755 bunnyfetch.sh $DESTDIR$PREFIX/bin/bunnyfetch"
install -Dm 755 bunnyfetch.sh $PREFIX/bin/bunnyfetch