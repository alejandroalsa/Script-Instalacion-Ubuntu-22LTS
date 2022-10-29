#<---------------------------------------------->
# Script para la instalación y configuración de software en Ubuntu 22 LTS.
#<---------------------------------------------->

clear

set -x

# Variables 
    NOMBREUSUARIO=alejandro

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
    # Instalacion de Docker + XAMPP (Contenedor)
    #<---------------------------------------------->
        apt-get install \
            ca-certificates \
            curl \
            gnupg \
            lsb-release -y
            
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
        
        echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null.
        
        apt-get update
        
        chmod a+r /etc/apt/keyrings/docker.gpg
        apt-get update
        
        apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
        
        groupadd docker
        
        usermod -aG docker $USER
        
        newgrp docker
        
        docker run --name XAMPP -p 41061:22 -p 41062:80 -d -v ~/Webs:/www tomsik68/xampp:8
        
        chown $NOMBREUSUARIO:$NOMBREUSUARIO ~/Webs -R
        
    #<---------------------------------------------->
    # Instalacion de Docker + XAMPP (Contenedor)
    #<---------------------------------------------->

#<---------------------------------------------->
# Instalacion de Software
#<---------------------------------------------->
    


#<---------------------------------------------->
# Instalacion de Recursos
#<---------------------------------------------->

    # Terminal personalizada
        rm /home/$NOMBREUSUARIO/.bashrc
        cp ../Records/.bashrc /home/$NOMBREUSUARIO

    # Descarga de fondos de pantalla
        cd /tmp

        wget https://github.com/saint-13/Linux_Dynamic_Wallpapers/archive/refs/heads/main.zip

        unzip main.zip 

        rm -rf /tmp/main.zip
        
        mv Linux_Dynamic_Wallpapers-main /home/$NOMBREUSUARIO/Imágenes/Fondos

        cd /home/$USERNAME/Imágenes/Fondos

        rm -rf README.md 2static1dynamic.sh Easy_Install.sh install.sh xml/ Screenshots/ Dynamic_Wallpapers/*.xml

#<---------------------------------------------->
# Instalacion de Software 
#<---------------------------------------------->
