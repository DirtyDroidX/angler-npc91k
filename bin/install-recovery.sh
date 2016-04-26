#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:13292778:a0c2430feb260eb2123b8bcf60a27a6cbb891070; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12334310:5b980b5ac05eb1ce11d07b85ff1c6652287f54db EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery a0c2430feb260eb2123b8bcf60a27a6cbb891070 13292778 5b980b5ac05eb1ce11d07b85ff1c6652287f54db:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
