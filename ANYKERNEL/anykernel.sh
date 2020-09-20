# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=-#- MoonBase Kernel Caf MSM-4.9-r27 Branch For Moto G7 Power Ocean -#-
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ocean
device.name2=
supported.versions=
supported.patchlevels=
'; } # end properties

block=/dev/block/by-name/boot;
is_slot_device=auto;
ramdisk_compression=lzma;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;
write_boot;
## end install

