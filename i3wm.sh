#!/bin/bash

# --- VARIAVEIS DE CONFIGURAÇÃO ---
USER_NAME=$(whoami)
I3_CONFIG_DIR="$HOME/.config/i3"
PICOM_CONFIG_DIR="$HOME/.config/picom"

# Verifica se está rodando com privilégios de root (sudo)
if [[ $EUID -ne 0 ]]; then
   echo "Este script deve ser executado como root (use sudo)."
   exit 1
fi

echo "--- 1. ATUALIZANDO O SISTEMA ---"
apt update
apt upgrade -y

# ATENÇÃO: Remoção de firmwares não livres conforme solicitado.
# Caso enfrente problemas com Wi-Fi ou vídeo, você pode precisar revisar este ponto.

echo "--- 2. INSTALANDO DRIVERS DE VÍDEO AMD (Software Livre) e XORG CORE ---"
apt install -y \
    xserver-xorg-core \
    xinit \
    mesa-vulkan-drivers \
    xserver-xorg-video-amdgpu
    
echo "--- 3. INSTALANDO I3WM, ROFI, PICOM E APLICAÇÕES CORE ---"
apt install -y \
    i3 \
    i3status \
    rofi \
    xterm \
    firefox-esr \
    picom \
    
echo "--- 4. INSTALANDO REDE, ÁUDIO E CONTROLES DE VOLUME ---"
apt install -y \
    network-manager \
    network-manager-gnome \
    pipewire-pulse \
    pavucontrol \
    alsa-utils \
    playerctl \
    hostapd \
    dnsmasq
    
echo "--- 5. INSTALANDO GERENCIADOR DE SESSÃO (LIGHTDM) E FERRAMENTAS DE TEMA ---"
apt install -y \
    lightdm \
    lightdm-gtk-greeter \
    lxappearance \
    gtk2-engines-murrine
