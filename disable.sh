#!/bin/bash

EXIST=`ip -6 route show to default | wc -l`
if [ $EXIST -eq 0 ]
then
    echo "No ipv6 route exists, doing nothing."
fi
if [ $EXIST -eq 1 ]
then
    echo "Deleting default ipv6 route"
    ip -6 route del default
fi