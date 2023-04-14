INCLUDE_DIRECTORIES(../include) #添加头文件路径
link_directories(/home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake03/lib) #制定链接库的路径
add_executable(main main.cpp)
target_link_libraries(main hello) #制定链接库的名称（只需要库名称，不需要前缀lib)
