#!/bin/bash

# Install guest additions.
function quest_additions_install()
{
    (cd /usr/local/src && wget http://dlc-cdn.sun.com/virtualbox/4.3.26/VBoxGuestAdditions_4.3.26.iso)
    mkdir /media/VBoxGuestAdditions
    mount -o loop,ro /usr/local/src/VBoxGuestAdditions_4.3.26.iso /media/VBoxGuestAdditions
    sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
    rm -f /usr/local/src/VBoxGuestAdditions_4.3.26.iso
    umount /media/VBoxGuestAdditions
    rmdir /media/VBoxGuestAdditions
}

# Check if application is installed
function program_is_installed()
{
    local return_=0
    if which $1 &> /dev/null; 
    then
        local return_=1 
    fi
    echo "$return_"
}

# Only run if not included.
NAME=$(basename $0)
if [ ${NAME} == "shell_provision.sh" ]; 
then
    quest_additions_install
fi
