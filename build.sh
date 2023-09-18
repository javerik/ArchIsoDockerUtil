#!/bin/bash
: ${ATOS_DIR:=/atos}
: ${WORKDIR:=/tmp/atos_work}
: ${PROFILE_DIR:="${ATOS_DIR}/atos_live"}
: ${OUT_DIR:="${ATOS_DIR}/out"}

echo "Create ATOS ISO"
cd $ATOS_DIR
pacman -Syu --noconfirm
mkarchiso -v -w $WORKDIR -o $OUT_DIR $PROFILE_DIR
