
#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
# WILD RIFT PERFORMANCE HELPER
# Diagnostico basico de dispositivo Android
# Autor: Caua M. Santos
# ==========================================

echo "=================================="
echo " WILD RIFT PERFORMANCE HELPER"
echo "=================================="

echo ""
echo "[1] INFORMACOES DO DISPOSITIVO"

echo "Fabricante: $(getprop ro.product.manufacturer)"
echo "Modelo: $(getprop ro.product.model)"
echo "Android: $(getprop ro.build.version.release)"
echo "Arquitetura: $(getprop ro.product.cpu.abi)"

echo ""
echo "[2] MEMORIA RAM"

if [ -r /proc/meminfo ]; then
    grep -E 'MemTotal|MemAvailable' /proc/meminfo
else
    echo "Informacoes de memoria indisponiveis."
fi

echo ""
echo "[3] ARMAZENAMENTO"

df -h /data

echo ""
echo "=================================="
echo " DIAGNOSTICO CONCLUIDO!"
echo "=================================="

echo "Projeto em desenvolvimento."
echo "Nenhuma configuracao do aparelho foi alterada."
