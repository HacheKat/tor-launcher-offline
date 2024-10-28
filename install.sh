#!/bin/bash

# Se déplacer dans le dossier Documents/flatpak_tor_packages où les fichiers sont stockés
cd ~/Documents/flatpak_tor_packages

# Installation des paquets Flatpak et Tor Browser Launcher
echo "Installation des paquets Flatpak et Tor Browser Launcher depuis le dossier Documents..."
sudo dpkg -i *.deb

# Installation des runtimes Flatpak
echo "Installation des runtimes Flatpak pour Tor Browser Launcher..."
flatpak install --user ~/Documents/flatpak_tor_packages/org.freedesktop.Platform.flatpakref -y
flatpak install --user ~/Documents/flatpak_tor_packages/org.freedesktop.Platform.GL.default.flatpakref -y
flatpak install --user ~/Documents/flatpak_tor_packages/org.freedesktop.Platform.Locale.flatpakref -y

# Installation de Tor Browser Launcher
echo "Installation de Tor Browser Launcher depuis le dossier Documents..."
flatpak install --user ~/Documents/flatpak_tor_packages/com.github.micahflee.torbrowser-launcher.flatpakref -y

echo "Installation terminée. Flatpak et Tor Browser Launcher sont maintenant installés."
