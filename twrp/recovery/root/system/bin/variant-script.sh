#!/system/bin/sh
# This script is needed to automatically set device props.

variant=$(getprop ro.boot.prjname)
region=$(getprop ro.boot.hw_region_id)

echo $variant
echo $region

case $region in
    "21")
    #NA
            resetprop ro.product.device "OP5973L1"
            resetprop ro.product.odm.device "OP5973L1"
            resetprop ro.product.product.device "OP5973L1"
            resetprop ro.product.system_ext.device "OP5973L1"
            resetprop ro.product.vendor.device "OP5973L1"
            resetprop ro.product.product.model "CPH2551"
            resetprop ro.product.model "CPH2551"
            resetprop ro.product.system.model "CPH2551"
            resetprop ro.product.system_ext.model "CPH2551"
            resetprop ro.product.vendor.model "CPH2551"
            resetprop ro.product.odm.model "CPH2551"
            resetprop ro.boot.hardware.revision "NA"
        ;;
esac

exit 0 
