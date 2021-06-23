#! /bin/sh
#
# build.sh -- build the Fujitsu RA doc

# usage
[ $# -ge 1 ] || echo "usage $(basename $0) <output-format>" 2>&1

# setup
DC=DC-TRD-Kubernetes-RA

[ $# -gt 0 ]

make fujitsu
