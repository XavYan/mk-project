#!/bin/bash

echo "Instalamos el comando mk-project en /usr/local/bin..."

# Cambiamos los permisos
chmod 777 mk-project
if [ $? -ne 0 ]; then
    echo "Ha habido un problema al cambiar los permisos."
    exit -1
fi

# Movemos el script a /usr/local/bin
mv ./mk-project /usr/local/bin/mk-project
if [ $? -ne 0 ]; then
    echo "No se ha podido mover el fichero mk-project al directorio /usr/local/bin."
    exit -1
fi

echo "Creamos la carpeta de configuración ~/.mk-project-config..."

# Creamos la carpeta ~/.mk-project-config
mkdir -p ~/.mk-project-config

# Añadimos la version
cat ./version > ~/.mk-project-config/version


# Creamos script all por defecto
if [ "$(cat ~/.mk-project-config/all)" == "" ]; then
	echo "Instalamos el script ~/.mk-project-config/all en su valor por defecto..."
	echo "mk-project --node --linters --parcel --gitignore --scripts --gh-pages --project-name \$1" >> ~/.mk-project-config/all
fi

echo "¡Se ha instalado correctamente!"
