cat <<'EOF' > WesleyXtermux-private-ambient.sh
#!/data/data/com.termux/files/usr/bin/bash
# Ambient: Google Pixel 6 Forensic
# Compatible: ARM64 / Android 12+
# Contributor: WesleyXtermux

echo -e "\033[1;35m[Wesley-Ambient]\033[0m Checking compatibility..."

# Verificação de Arquitetura exigida pelas regras do David
ARCH=$(uname -m)
if [ "$ARCH" != "aarch64" ]; then
    echo -e "\033[1;31m[ERROR]\033[0m Architecture $ARCH not supported for Pixel 6 ambient."
    exit 1
fi

SHADOW="/data/data/com.termux/files/usr/share/aether-sync/shadow"

echo -e "\033[1;35m[Wesley-Ambient]\033[0m Injecting Google Pixel 6 nodes..."

# Criando pastas específicas que só existem no Pixel
mkdir -p "$SHADOW/system/priv-app/PixelLauncher"
mkdir -p "$SHADOW/data/system/device_identifiers"
mkdir -p "$SHADOW/data/vendor/hardware_info"

# Injetando um Build.Prop específico de Pixel para sobrepor o padrão
printf "ro.product.model=Pixel 6\nro.product.brand=google\nro.build.id=SD1A.210817.036\n" > "$SHADOW/system/build.prop"

echo -e "\033[1;32m[SUCCESS]\033[0m Pixel 6 Ambient ready in Shadow."
EOF
chmod +x WesleyXtermux-private-ambient.sh
