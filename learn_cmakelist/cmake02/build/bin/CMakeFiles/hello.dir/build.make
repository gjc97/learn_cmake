# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build

# Include any dependencies generated for this target.
include bin/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include bin/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include bin/CMakeFiles/hello.dir/flags.make

bin/CMakeFiles/hello.dir/hello.cpp.o: bin/CMakeFiles/hello.dir/flags.make
bin/CMakeFiles/hello.dir/hello.cpp.o: ../lib/hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bin/CMakeFiles/hello.dir/hello.cpp.o"
	cd /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/hello.cpp.o -c /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/lib/hello.cpp

bin/CMakeFiles/hello.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/hello.cpp.i"
	cd /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/lib/hello.cpp > CMakeFiles/hello.dir/hello.cpp.i

bin/CMakeFiles/hello.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/hello.cpp.s"
	cd /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/lib/hello.cpp -o CMakeFiles/hello.dir/hello.cpp.s

bin/CMakeFiles/hello.dir/hello.cpp.o.requires:

.PHONY : bin/CMakeFiles/hello.dir/hello.cpp.o.requires

bin/CMakeFiles/hello.dir/hello.cpp.o.provides: bin/CMakeFiles/hello.dir/hello.cpp.o.requires
	$(MAKE) -f bin/CMakeFiles/hello.dir/build.make bin/CMakeFiles/hello.dir/hello.cpp.o.provides.build
.PHONY : bin/CMakeFiles/hello.dir/hello.cpp.o.provides

bin/CMakeFiles/hello.dir/hello.cpp.o.provides.build: bin/CMakeFiles/hello.dir/hello.cpp.o


# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/hello.cpp.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

bin/libhello.so: bin/CMakeFiles/hello.dir/hello.cpp.o
bin/libhello.so: bin/CMakeFiles/hello.dir/build.make
bin/libhello.so: bin/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libhello.so"
	cd /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/CMakeFiles/hello.dir/build: bin/libhello.so

.PHONY : bin/CMakeFiles/hello.dir/build

bin/CMakeFiles/hello.dir/requires: bin/CMakeFiles/hello.dir/hello.cpp.o.requires

.PHONY : bin/CMakeFiles/hello.dir/requires

bin/CMakeFiles/hello.dir/clean:
	cd /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : bin/CMakeFiles/hello.dir/clean

bin/CMakeFiles/hello.dir/depend:
	cd /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02 /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/lib /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin /home/gjc/CppProject/learn_cmake/learn_cmakelist/cmake02/build/bin/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/CMakeFiles/hello.dir/depend

