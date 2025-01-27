# Modificar la siguiente variable con la versión de ESP-IDF instalada
set(IDF_VERSION "v5.3.2")
set(ENV{IDF_PATH} "$ENV{IDF_TOOLS_PATH}\\frameworks\\esp-idf-${IDF_VERSION}")

# Modificar la siguiente variable con nuestra versión del SOC de Espressif
set(ESP_SERIE "esp32")

include("$ENV{IDF_PATH}\\tools\\cmake\\toolchain-${ESP_SERIE}.cmake")

# ESP-IDF utiliza FreeRTOS y LwIP
set(FORTE_ARCHITECTURE "FreeRTOSLwIP")

# Muestra los flags originales de compilación
message("CMAKE_C_FLAGS   used for this build:${CMAKE_C_FLAGS}")
message("CMAKE_CXX_FLAGS used for this build:${CMAKE_C_FLAGS}")

# Agrega flags de compilación
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -Wno-deprecated-declarations -Wno-attributes")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -Wno-deprecated-declarations -Wno-attributes")

# Muestra los flags finales para la compilación
message("CMAKE_C_FLAGS   used for this build:${CMAKE_C_FLAGS}")
message("CMAKE_CXX_FLAGS used for this build:${CMAKE_C_FLAGS}")