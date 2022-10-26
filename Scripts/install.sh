#<---------------------------------------------->
# Script para la instalación y configuración de software en Ubuntu 22 LTS.
#<---------------------------------------------->

clear

set -x

#<---------------------------------------------->
# Instalacion de Actulizaciones
#<---------------------------------------------->
    apt-get update -y
    apt-get upgrade -y
#<---------------------------------------------->
# Instalacion de Actulizaciones
#<---------------------------------------------->



#<---------------------------------------------->
# Instalacion de Software
#<---------------------------------------------->

    apt-get install gnome-tweaks chrome-gnome-shell gnome-shell-extensions lm-sensors filezilla virtualbox git unzip -y
    snap install --classic code 
    snap install chromium 
    snap install libreoffice

#<---------------------------------------------->
# Instalacion de Software
#<---------------------------------------------->
    


#<---------------------------------------------->
# Instalacion de Recursos
#<---------------------------------------------->

    # Terminal personalizada
        rm /home/$USERNAME/.bashrc
        cp ../Records/.bashrc /home/$USERNAME

    # Descarga de fondos de pantalla
        cd /tmp

        wget https://github.com/saint-13/Linux_Dynamic_Wallpapers/archive/refs/heads/main.zip

        unzip Linux_Dynamic_Wallpapers-main.zip /home/$USERNAME/Imágenes

        rm -rf /tmp/Linux_Dynamic_Wallpapers-main.zip

        cd /home/$USERNAME/Imágenes/Linux_Dynamic_Wallpapers-main

        rm -rf README.md 2static1dynamic.sh Easy_Install.sh install.sh xml/ Screenshots/ Dynamic_Wallpapers/*.xml

#<---------------------------------------------->
# Instalacion de Software 
#<---------------------------------------------->