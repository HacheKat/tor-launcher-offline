#!/bin/bash

# Créer le dossier pour les paquets et se déplacer dedans
mkdir -p flatpak_tor_packages
cd flatpak_tor_packages

# Mettre à jour la liste des paquets
echo "Mise à jour de la liste des paquets..."
sudo apt update

# Télécharger les paquets Flatpak et leurs dépendances
echo "Téléchargement de Flatpak et de ses dépendances..."
sudo apt-get download flatpak xdg-desktop-portal xdg-desktop-portal-gtk

# Télécharger Tor Browser Launcher et ses dépendances
echo "Téléchargement de Tor Browser Launcher et de ses dépendances..."
sudo apt-get download torbrowser-launcher gnupg wget curl python3 python3-pyqt5 apparmor

# Installer les paquets téléchargés
echo "Installation de Flatpak et de Tor Browser Launcher avec leurs dépendances..."
sudo dpkg -i *.deb

# Télécharger les runtimes Flatpak nécessaires pour Tor Browser Launcher
echo "Téléchargement des runtimes Flatpak nécessaires..."
flatpak install --user --download-only flathub org.freedesktop.Platform -y
flatpak install --user --download-only flathub org.freedesktop.Platform.GL.default -y
flatpak install --user --download-only flathub org.freedesktop.Platform.Locale -y

echo "Téléchargement et installation terminés. Les fichiers sont dans $(pwd)"
