##############################################################################
## Filename:          C:\materija\RA77-2013\vezba7/drivers/my_peripheral_v1_00_a/data/my_peripheral_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Thu Mar 24 11:16:30 2016 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "my_peripheral" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
