#! /bin/sh
#
# build.sh -- build the Fujitsu RA doc

# usage
if [ $# -ge 1 ]
then
   echo "usage: $(basename $0) <output-format>"
   exit
fi
if [[ "$1" == "-h" || "$1" == "--help" ]]
then
    echo "usage: $(basename $0) <output-format>"
    exit
fi

# setup
##DC=DC-TRD-Kubernetes-RA

make fujitsu
