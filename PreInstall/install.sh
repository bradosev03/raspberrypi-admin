#!/bin/bash

devicepath=$1;
imagepath=$2;

echo "[!] Please make sure you umount the disk before using this script";

usage(){
    echo "$0 {device-path} {image-path}";
    exit;
}

if [ "$#" -ne 2 ]; then
    usage;
fi

echo "[+] Installing to disk";

dd bs=4M if=$imagepath of=$devicepath conv=fsync
