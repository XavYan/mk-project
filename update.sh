#!/usr/bin/bash

if [ -e /usr/local/bin/mk-project ] && [ "$(cat ~/.mk-project-config/version)" != "$(cat ./version)" ]; then
	echo "Actualizando mk-project..."
	sudo rm -f /usr/local/bin/mk-project
	bash ./install.sh 1>/dev/null
	echo "¡Se ha actualizado correctamente!"
else
	echo "mk-project ya está en su versión más reciente o no está instalado"
fi
