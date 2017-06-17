#!/bin/bash
rm -f kernel7.img
echo 'Compiling SerialConnection.lpr'
/home/pi/ultibo/core/fpc/bin/fpc -B -Tultibo -Parm -CpARMV7A -WpRPI2B @/home/pi/ultibo/core/fpc/bin/rpi2.cfg -O2 SerialConnection.lpr
date
ls -la kernel7.img
