#!/bin/bash

set -ouex pipefail

# Cleanup after all install

rm -rf /run/dnf
rm -rf /var/lib/dnf
rm -rf /var/lib/dkms
rm -rf /var/lib/pcp
