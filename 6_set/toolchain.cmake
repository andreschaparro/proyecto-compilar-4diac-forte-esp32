# Modificar la siguiente variable con la versión de ESP-IDF instalada
set(IDF_VERSION "v5.3.2")
set(ENV{IDF_PATH} "$ENV{IDF_TOOLS_PATH}\\frameworks\\esp-idf-${IDF_VERSION}")

message("${IDF_PATH}\\tools\\cmake\\toolchain-esp32.cmake")