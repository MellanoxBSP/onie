# Inventec DCS7032Q28B
# CPU Module: Intel Atom Rangeley (C2000)

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Inventec Corporation
VENDOR_ID = 6569

# Skip the i2ctools and the onie-syseeprom command for this platform
I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no

# Set the desired kernel version.
LINUX_VERSION		= 4.9
LINUX_MINOR_VERSION	= 57

# Use gcc-6.3.0
GCC_VERSION = 6.3.0

#
# Console parameters can be defined here 
# - default values are in build-config/arch/x86_64.make
# - template files are build-config/recovery/syslinux.cfg and build-config/recovery/grub-pxe.cfg 
# 
CONSOLE_FLAG = 1
CONSOLE_DEV = 1

#
# rootdelay parameter (only for nos)
#
ROOTDELAY = 5

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
