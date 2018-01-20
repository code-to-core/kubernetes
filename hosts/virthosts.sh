#!/bin/bash

for i in */Vagrantfile
do
    #grep vm.hostname $i | cut -d '=' -f2 -
    guest=$(grep vm.hostname $i | cut -d '=' -f2)
    echo Host = \"$(dirname $i)\", Guest = $guest
done
