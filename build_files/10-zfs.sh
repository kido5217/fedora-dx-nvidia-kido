#!/bin/bash

set -ouex pipefail

## Add ZFS repo

dnf -y install https://zfsonlinux.org/fedora/zfs-release-3-1.fc44.noarch.rpm

## Install kernel headers

dnf -y install kernel-devel

## Install ZFS packages

dnf -y install zfs

## Always load zfs moudle

echo 'zfs' >/etc/modules-load.d/zfs.conf
echo 'zfs' >/etc/dnf/protected.d/zfs.conf

## Cleanup

systemctl disable dkms.service
