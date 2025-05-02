#!/bin/bash
# Script: regenerar_initramfs_faltantes.sh
# Description: Detecta versiones de kernel instaladas y regenera el archivo initramfs si falta
# Autor: EI-Flores
# Date: 2025-05-01

echo "🔍 Searching for installed kernels..."
echo "🔍 Buscando kernels instalados..."
echo "🔍 Suche nach installierten Kerneln..."
KERNELS=$(rpm -q kernel-core | sed 's/kernel-core-//')

for KERNEL in $KERNELS; do
  INITRAMFS_FILE="/boot/initramfs-${KERNEL}.img"
  if [ ! -f "$INITRAMFS_FILE" ]; then
    echo "⚠️ Falta: $INITRAMFS_FILE"
    echo "🔧 Regenerando initramfs para $KERNEL..."
    sudo dracut --force --verbose "$INITRAMFS_FILE" "$KERNEL"
    if [ $? -eq 0 ]; then
      echo "✅ initramfs for $KERNEL regenerated successfully."
      echo "✅ initramfs para $KERNEL regenerado correctamente."
      echo "✅ initramfs für $KERNEL erfolgreich neu generiert."
    else
      echo "❌ Error generating initramfs for $KERNEL"
      echo "❌ Error al generar initramfs para $KERNEL"
      echo "❌ Fehler beim Generieren von initramfs für $KERNEL"
    fi
  else
    echo "✅ Already exists: $INITRAMFS FILE"
    echo "✅ Ya existe: $INITRAMFS_FILE"
    echo "✅ Existiert bereits: $INITRAMFS-DATEI"
  fi
done

echo "🔁 Updating GRUB configuration..."
echo "🔁 Actualizando configuración de GRUB..."
echo "🔁 GRUB-Konfiguration wird aktualisiert..."
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

echo "🎉 Process terminated. Reboot if you want to test the repaired kernels."
echo "🎉 Proceso finalizado. Reinicia si deseas probar los kernels reparados."
echo "🎉 Prozess beendet. Starten Sie neu, wenn Sie die reparierten Kernel testen möchten."
