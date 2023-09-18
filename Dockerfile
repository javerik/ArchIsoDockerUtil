FROM library/archlinux:base-devel-20230910.0.177821

RUN pacman -Sy && pacman -S git archiso bash git base-devel --noconfirm

COPY build.sh root/build.sh

ENTRYPOINT ["/bin/bash", "/root/build.sh"]
