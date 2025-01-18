# Modificar la siguiente variable con la versión de ESP-IDF instalada
set(IDF_VERSION "v5.3.2")
set(ENV{IDF_PATH} "$ENV{IDF_TOOLS_PATH}\\frameworks\\esp-idf-${IDF_VERSION}")

# Modificar la siguiente variable con nuestra versión del SOC de Espressif
set(ESP_SERIE "esp32")

include("$ENV{IDF_PATH}\\tools\\cmake\\toolchain-${ESP_SERIE}.cmake")

# ESP-IDF utiliza FreeRTOS y LwIP
set(FORTE_ARCHITECTURE "FreeRTOSLwIP")