#!/bin/bash
cpu=$(uname -p)
if [ $cpu == "armv7l" ] ; then
	cpu="armv7hl"
fi
base=/root/driver_v5p14p3
/usr/sbin/insmod $base/rcestream.ko cfgTxCount0=2 cfgTxCount2=8 cfgRxCount0=2048 cfgRxCount2=2048 cfgSize0=4096 cfgSize2=65536 cfgMode2=20
/usr/sbin/insmod $base/rce_memmap.ko
exit 0

