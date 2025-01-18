# Modificar la siguiente variable con la versión de ESP-IDF que tenemos instalada
set(IDF_VERSION "v5.3.2")
set(IDF_ENV_PATH $ENV{IDF_TOOLS_PATH}/frameworks/esp-idf-${IDF_VERSION})

message(${IDF_ENV_PATH}/tools/cmake/toolchain-esp32.cmake)