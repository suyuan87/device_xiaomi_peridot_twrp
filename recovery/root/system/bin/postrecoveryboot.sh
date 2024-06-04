#!/sbin/sh
#
# TODO: this kludge is needed to prevent issues with mounting
# system and vendor in some zip installers and in the gui
#

rmmod goodix_core && insmod /vendor/lib/modules/1.1/goodix_core.ko
insmod /vendor/lib/modules/1.1/goodix_core.ko
exit 0
#
