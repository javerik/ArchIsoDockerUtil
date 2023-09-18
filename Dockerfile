FROM library/archlinux:base-devel-20230910.0.177821

RUN echo "Server = https://europe.mirror.pkgbuild.com/$repo/os/$arch" >> /etc/pacman.d/mirrorlist

RUN pacman-key --init && pacman -Sy archlinux-keyring --noconfirm && pacman -Su --noconfirm  && pacman -S git archiso bash git base-devel --noconfirm

COPY build.sh root/build.sh
ENV PATH=$PATH:/root

ENTRYPOINT [""]
