file(GLOB SOURCE_FILES *.cpp ../../src/*.cpp)

set(LIBRARIES SPI)

include_directories(../../src)

arduino(tw-example-simple "${SOURCE_FILES}" "${LIBRARIES}")

target_compile_options(tw-example-simple PRIVATE -Wall -Werror)
