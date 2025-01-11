#!/usr/bin/env bash

forte_bin_dir='bin/esp32'

if [ ! -d "${forte_bin_dir}" ]; then
    mkdir -p "${forte_bin_dir}"
fi

if [ -d "${forte_bin_dir}" ]; then
    echo "directory ${forte_bin_dir} exists"
    # El comando cd de linux sirve para cambiar de carpeta
    # Si se ejecuta únicamente cd "${forte_bin_dir}" SpellSchek mostrará un error y las opciones para corregirlo
    cd "${forte_bin_dir}" || exit 1
    echo "${PWD}"
    # Ejecución de cmake desde el script
    cmake --version
else
    echo "unable to create ${forte_bin_dir}"
    exit 1
fi
