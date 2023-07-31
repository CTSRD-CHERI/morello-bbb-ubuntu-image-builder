#!/bin/bash

echo "Morello image customisations..."

echo "Adding default SSH key"
sudo mkdir -p "${tempdir}/home/morello/.ssh"
sudo chmod 700 "${tempdir}/home/morello/.ssh"
sudo cp -v "${DIR}/morello/morello-bbb" "${tempdir}/home/morello/.ssh/authorized_keys"
sudo chmod 600 "${tempdir}/home/morello/.ssh/authorized_keys"
sudo chown -R 1000:1000 "${tempdir}/home/morello/.ssh"

echo "Setting sshd_config to no password auth, no root"
sudo sed -i 's/^#*PermitRootLogin.*$/PermitRootLogin no/g' "${tempdir}/etc/ssh/sshd_config"
sudo sed -i 's/^#*PasswordAuthentication.*$/PasswordAuthentication no/g' "${tempdir}/etc/ssh/sshd_config"

echo "Configuring USB gadget device to use mass storage image at /var/lib/cfumass.img"
sudo cp -v "${DIR}/morello/bb-start-acm-ncm-rndis-old-gadget" "${tempdir}/usr/bin/bb-start-acm-ncm-rndis-old-gadget"

echo "Done image customisations"
