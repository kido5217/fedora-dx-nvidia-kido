#!/bin/bash

set -ouex pipefail

## Add ZFS repo

dnf -y install  https://zfsonlinux.org/fedora/zfs-release-3-1$(rpm --eval "%{dist}").noarch.rpm

## Install kernel headers

dnf -y install kernel-devel-$(uname -r | awk -F'-' '{print $1}')

## Install ZFS packages

dnf -y install zfs

## Always load zfs moudle

echo zfs > /etc/modules-load.d/zfs.conf
echo 'zfs' > /etc/dnf/protected.d/zfs.conf

## Cleanup

systemctl disable dkms.service
