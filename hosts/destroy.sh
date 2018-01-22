#!/bin/bash

host=$(uname -n)
guest=$(grep $host hosts.txt | cut -d ':' -f2)

vagrant destroy $guest
