#!/bin/bash
: ${ATOS_DIR:=/atos}
: ${WORKDIR:=/tmp/atos_work}
: ${PROFILE_DIR:="${ATOS_DIR}/atos_live"}
: ${OUT_DIR:="${ATOS_DIR}/out"}

echo "Create ATOS ISO from ${ATOS_DIR}"
cd $ATOS_DIR
pacman-key --init
pacman-key --populate archlinux
pacman -Syu --noconfirm
mkarchiso -v -w $WORKDIR -o $OUT_DIR $PROFILE_DIR
