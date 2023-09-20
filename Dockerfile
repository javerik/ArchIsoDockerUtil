FROM library/archlinux:base-devel-20230910.0.177821

RUN echo 'Server = https://europe.mirror.pkgbuild.com/$repo/os/$arch' > /etc/pacman.d/mirrorlist

RUN pacman-key --init && pacman -Sy archlinux-keyring --noconfirm && pacman -Su --noconfirm  && pacman -S git syslinux cmake fuse parted fuse2 archiso bash --noconfirm

COPY build.sh root/build.sh
ENV PATH=$PATH:/root

# Install partfs

WORKDIR /tmp
RUN git clone https://github.com/braincorp/partfs.git && cd partfs && make && mv build/bin/partfs /root/partfs && cd /root && rm -rf /tmp/partfs

ENTRYPOINT [""]
