#!/bin/bash

# Se déplacer dans le dossier contenant les paquets
cd ~/Documents/torbrowser_launcher_offline

# Installer tous les paquets .deb présents dans le dossier
echo "Installation de Tor Browser Launcher et de ses dépendances..."
sudo dpkg -i *.deb

# Résoudre les éventuelles dépendances manquantes
#echo "Vérification des dépendances manquantes..."
#sudo apt-get install -f

