#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8521004:f0cc7fb27f717c6513e7a57dc7b885755d915f47; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7916839:f4e3e0a6455209e08569f5570c8e2a838d53f725 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f0cc7fb27f717c6513e7a57dc7b885755d915f47 8521004 f4e3e0a6455209e08569f5570c8e2a838d53f725:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
