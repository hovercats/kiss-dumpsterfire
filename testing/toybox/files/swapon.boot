# toybox does not currently support the -a flag for swapon
# therefore we must manually enable the swap partition
# correct the device name if neccessary
swapon /dev/sda2
