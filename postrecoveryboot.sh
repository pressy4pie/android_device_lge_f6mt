#!/sbin/sh

# wait for system to settle
sleep 5

# change the LED pattern to something less disco
echo 2 > /sys/devices/i2c-0/0-0032/led_pattern

# Tell us that we're in postrecoveryboot.sh
echo "I:Postrecoveryboot script started!" >> /cache/recovery/log

# Zero out boot recovery and wipe data command
 -dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc seek=64 count=20 bs=1

# Tell us that it worked!
echo "I:LGE MISC flag reset" >> /cache/recovery/log
