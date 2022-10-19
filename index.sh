#!/bin/bash
echo Start node instalation

# Set permisions to get.last.version executable
chmod +x ./go.files/get.last.version

#Download node last version
./go.files/get.last.version

#Descompress file and move to /usr/local/lib
tar -xJvf node.tar.xz -C /usr/local/lib/
mv -f /usr/local/lib/node-*/ /usr/local/lib/node

#Setting environment variables
export NODEJS=/usr/local/lib/node/bin/
export PATH=$PATH:$NODEJS

global_installation(){

    read -r -p "Global instalation? Y/n: " response
    case "$response" in 
        n | N )
            echo Rawr
            echo "export PATH=$PATH" >> ~/.bashrc
            ;;
        y|Y|"")
            echo "Miaw"
            echo "export PATH=$PATH" >> /etc/profile
            echo "export PATH=$PATH" >> ~/.bashrc
            ;;
        *)
            global_installation
        ;;
    esac
}

global_installation

#Refresh environment
. ~/.profile
. /etc/profile

#Remove node compress file
rm -rf ./node*.tar.xz

# Say install
echo node version $(node -v)
echo npm version $(npm -v)
echo Node and npm installed