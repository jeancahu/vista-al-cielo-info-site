#/bin/bash

## Borra el directorio remoto y copia todo nuevamente
#ssh docu@caroje.com "rm -rf /home/docu/restaurant_docusaurus/"
#scp -r ./build/ docu@caroje.com:/home/docu/restaurant_docusaurus

## Actualiza únicamente los archivos más nuevos del directorio local en el directorio remoto
rsync -avz --update ./build/ docu@caroje.com:/home/docu/doc/vista-al-cielo

exit $?
