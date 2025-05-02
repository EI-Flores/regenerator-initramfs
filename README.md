# regenerar_initramfs_faltantes.sh

## 🛠️ Descripción


### 🇬🇧 English

This script automatically detects installed kernels on Fedora and checks if the corresponding `initramfs` file is missing. If it is found missing, it regenerates it using `dracut`. This is useful when a kernel update fails partially and causes errors such as **kernel panic** or **initramfs not found**.

### 🇪🇸 Español

Este script detecta automáticamente los kernels instalados en Fedora y verifica si falta el archivo `initramfs` correspondiente. Si lo encuentra ausente, lo regenera usando `dracut`. Es útil cuando una actualización del kernel falla parcialmente y causa errores como **kernel panic** o **initramfs not found**.

### 🇩🇪 Deutsch

Dieses Skript erkennt automatisch installierte Kernel auf Fedora und prüft, ob die entsprechende „initramfs“-Datei fehlt. Wenn es fehlt, wird es mit „dracut“ neu generiert. Dies ist nützlich, wenn ein Kernel-Update teilweise fehlschlägt und Fehler wie **Kernel Panic** oder **Initramfs nicht gefunden** verursacht.



---

## 📌 Available languages - Idiomas disponibles - Verfügbare Sprachen



### 🇬🇧 English

**Usage:**

```bash
chmod +x regenerar_initramfs_faltantes.sh
./regenerar_initramfs_faltantes.sh
```

**Requirements:**

- Fedora system (tested on Fedora 42)
- `dracut` installed
- `sudo` privileges

**Features:**

- Lists installed kernels.
- Checks if the initramfs file is missing.
- Regenerates initramfs using `dracut` if needed.
- Automatically updates GRUB.

---

### 🇪🇸 Español

**Uso:**

```bash
chmod +x regenerar_initramfs_faltantes.sh
./regenerar_initramfs_faltantes.sh
```

**Requisitos:**

- Fedora (probado en Fedora 42)
- `dracut` instalado
- Permisos `sudo`

**Funciones:**

- Lista los kernels instalados.
- Verifica si falta el archivo initramfs.
- Genera el archivo con `dracut` si es necesario.
- Actualiza GRUB automáticamente.

---

### 🇩🇪 Deutsch

**Verwendung:**

```bash
chmod +x regenerar_initramfs_faltantes.sh
./regenerar_initramfs_faltantes.sh
```

**Voraussetzungen:**

- Fedora-System (getestet auf Fedora 42)
- `dracut` installiert
- `sudo`-Rechte

**Funktionen:**

- Listet installierte Kernel auf.
- Prüft, ob die initramfs-Datei fehlt.
- Regeneriert die Datei bei Bedarf mit `dracut`.
- Aktualisiert GRUB automatisch.

---

## 🔐 Advertencia / Warning / Warnung

Este script no modifica archivos del kernel, solo regenera los archivos de arranque (`initramfs`) si están ausentes. Asegúrate de revisar los resultados si se producen errores durante el proceso.

---

## 📄 Licencia / License / Lizenz

MIT License - Uso libre con atribución.
