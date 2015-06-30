#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8533292:e44df71fe484286312cc62825e73892b7c4c8418; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7927079:5b9d4ef0497ee50d3bc123711a590eae3ea78b6b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery e44df71fe484286312cc62825e73892b7c4c8418 8533292 5b9d4ef0497ee50d3bc123711a590eae3ea78b6b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
