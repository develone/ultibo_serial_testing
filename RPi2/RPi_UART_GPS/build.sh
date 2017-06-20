#!/bin/bash
rm -f kernel7.img checksum_ultibo.o libgps.a 
echo 'Compiling checksum_ultibo.c' 
arm-none-eabi-gcc -O2 -mabi=aapcs -marm -march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard -c checksum_ultibo.c
echo 'Creating libgps.a'
arm-none-eabi-ar rcs libgps.a checksum_ultibo.o
#echo 'Compiling SerialConnection.lpr'
#/home/pi/ultibo/core/fpc/bin/fpc -vi -B -Tultibo -Parm -CpARMV7A -WpRPI2B @/home/pi/ultibo/core/fpc/bin/rpi2.cfg -O2 SerialConnection.lpr
echo 'Compiling UDPServerGPS.lpr'
/home/pi/ultibo/core/fpc/bin/fpc -vi -B -Tultibo -Parm -CpARMV7A -WpRPI2B @/home/pi/ultibo/core/fpc/bin/rpi2.cfg -O2 UDPServerGPS.lpr
date
ls -la kernel7.img checksum_ultibo.o libgps.a
