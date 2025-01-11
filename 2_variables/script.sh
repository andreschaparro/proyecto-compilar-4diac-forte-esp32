#!/usr/bin/env bash

# Las variables se pueden crear con el snippet variable assign
forte_bin_dir='bin/esp32'

# Las variables se pueden imprimir con el snippte echo variable
echo "${forte_bin_dir}"

# Dos variables se pueden concatenar con el snippte string concat
# PWD es una variable de entorno que contiene la ruta absoluta del directorio del script
forte_cmake_dir="${PWD}/cmake_dir"

echo "${forte_cmake_dir}"
