# include_directories(../hello_world.h)
# include(hello_world.h)
add_executable(hello_world hello_world.cpp)
# include_directories("./")
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

