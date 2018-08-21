include(Arduino)

enable_arduino_toolchain()

file(GLOB sources *.cpp ../../src/*.cpp)

add_arduino_library(tw-example-simple "${sources}")

find_package(SPI)

target_link_libraries(tw-example-simple SPI)

include_directories(../../src)

target_compile_options(tw-example-simple PRIVATE -Wall -Werror)

add_arduino_firmware(tw-example-simple)
