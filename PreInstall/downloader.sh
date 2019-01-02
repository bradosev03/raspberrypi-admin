#!/bin/sh

type=$1;
url=https://downloads.raspberrypi.org/raspbian_full_latest
lite=https://downloads.raspberrypi.org/raspbian_lite_latest
kali=https://images.offensive-security.com/arm-images/kali-linux-2018.4-rpi.img.xz
usage(){
    echo "$0 {full|lite|kali}";
    exit;
}

case $type in
    full)
        echo "Downloading Latest Version of Raspberry Pi Image";
        wget $url
        echo "Finished downloading";
        exit;
        ;;
    lite)
        echo "Downloading Latest Version of Raspberry Pi Image";
        wget -b $lite
        echo "Finished downloading";
        exit;
        ;;
    kali)
        echo "Downloading Latest Version of Raspberry Pi Image";
        wget $kali
        echo "Finished downloading";
        exit;
        ;;
    *)
        usage;
esac
