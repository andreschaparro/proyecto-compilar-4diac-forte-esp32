# Modificar la siguiente variable con la versión de ESP-IDF instalada
set(IDF_VERSION "v5.3.2")
set(ENV{IDF_PATH} "$ENV{IDF_TOOLS_PATH}\\frameworks\\esp-idf-${IDF_VERSION}")

# Modificar la siguiente variable con nuestra versión del SOC de Espressif
set(ESP_SERIE "esp32")

include("$ENV{IDF_PATH}\\tools\\cmake\\toolchain-${ESP_SERIE}.cmake")

# ESP-IDF utiliza FreeRTOS y LwIP
set(FORTE_ARCHITECTURE "FreeRTOSLwIP")

# Agrega flags de compilación
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -Wno-deprecated-declarations -Wno-attributes")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -Wno-deprecated-declarations -Wno-attributes")

# Muestra los flags finales para la compilación
message("CMAKE_C_FLAGS   used for this build:${CMAKE_C_FLAGS}")
message("CMAKE_CXX_FLAGS used for this build:${CMAKE_C_FLAGS}")

# Agrega las rutas de los headers de FreeRTOS
set_property(GLOBAL APPEND PROPERTY FORTE_INCLUDE_DIRECTORIES "$ENV{IDF_PATH}\\components\\freertos\\config\\include\\freertos")
set_property(GLOBAL APPEND PROPERTY FORTE_INCLUDE_DIRECTORIES "$ENV{IDF_PATH}\\components\\freertos\\config\\xtensa\\include\\freertos")

#
get_property(FORTE_INCLUDE_DIRS GLOBAL PROPERTY FORTE_INCLUDE_DIRECTORIES)
message("FORTE_INCLUDE_DIRECTORIES: ${FORTE_INCLUDE_DIRS}")