#!/usr/bin/env bash

forte_bin_dir='bin/esp32'

# Crear una estructura if con el snippet if directory exists
# El operador ! permite negar una condición
# Obtener el valor de una variable con el snippet variable read
# Crear una carpeta con el snippet directory create nested

if [ ! -d "${forte_bin_dir}" ]; then
    mkdir -p "${forte_bin_dir}"
fi

# Crear una estructura if-else con el snippet if
# Salir del script devolviendo un código de error con el snippet exit

if [ -d "${forte_bin_dir}" ]; then
    echo "directory ${forte_bin_dir} exists"
else
    # Para probar el else, borrar el directorio creado y el -p de la línea 11
    echo "unable to create ${forte_bin_dir}"
    exit 1
fi
