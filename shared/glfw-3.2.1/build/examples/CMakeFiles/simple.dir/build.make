# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.9.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.9.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/simple.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/simple.dir/flags.make

examples/simple.app/Contents/Resources/glfw.icns: ../examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content examples/simple.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/examples/glfw.icns examples/simple.app/Contents/Resources/glfw.icns

examples/CMakeFiles/simple.dir/simple.c.o: examples/CMakeFiles/simple.dir/flags.make
examples/CMakeFiles/simple.dir/simple.c.o: ../examples/simple.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/simple.dir/simple.c.o"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple.dir/simple.c.o   -c /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/examples/simple.c

examples/CMakeFiles/simple.dir/simple.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple.dir/simple.c.i"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/examples/simple.c > CMakeFiles/simple.dir/simple.c.i

examples/CMakeFiles/simple.dir/simple.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple.dir/simple.c.s"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/examples/simple.c -o CMakeFiles/simple.dir/simple.c.s

examples/CMakeFiles/simple.dir/simple.c.o.requires:

.PHONY : examples/CMakeFiles/simple.dir/simple.c.o.requires

examples/CMakeFiles/simple.dir/simple.c.o.provides: examples/CMakeFiles/simple.dir/simple.c.o.requires
	$(MAKE) -f examples/CMakeFiles/simple.dir/build.make examples/CMakeFiles/simple.dir/simple.c.o.provides.build
.PHONY : examples/CMakeFiles/simple.dir/simple.c.o.provides

examples/CMakeFiles/simple.dir/simple.c.o.provides.build: examples/CMakeFiles/simple.dir/simple.c.o


examples/CMakeFiles/simple.dir/__/deps/glad.c.o: examples/CMakeFiles/simple.dir/flags.make
examples/CMakeFiles/simple.dir/__/deps/glad.c.o: ../deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object examples/CMakeFiles/simple.dir/__/deps/glad.c.o"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple.dir/__/deps/glad.c.o   -c /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/deps/glad.c

examples/CMakeFiles/simple.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple.dir/__/deps/glad.c.i"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/deps/glad.c > CMakeFiles/simple.dir/__/deps/glad.c.i

examples/CMakeFiles/simple.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple.dir/__/deps/glad.c.s"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/deps/glad.c -o CMakeFiles/simple.dir/__/deps/glad.c.s

examples/CMakeFiles/simple.dir/__/deps/glad.c.o.requires:

.PHONY : examples/CMakeFiles/simple.dir/__/deps/glad.c.o.requires

examples/CMakeFiles/simple.dir/__/deps/glad.c.o.provides: examples/CMakeFiles/simple.dir/__/deps/glad.c.o.requires
	$(MAKE) -f examples/CMakeFiles/simple.dir/build.make examples/CMakeFiles/simple.dir/__/deps/glad.c.o.provides.build
.PHONY : examples/CMakeFiles/simple.dir/__/deps/glad.c.o.provides

examples/CMakeFiles/simple.dir/__/deps/glad.c.o.provides.build: examples/CMakeFiles/simple.dir/__/deps/glad.c.o


# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/simple.c.o" \
"CMakeFiles/simple.dir/__/deps/glad.c.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

examples/simple.app/Contents/MacOS/simple: examples/CMakeFiles/simple.dir/simple.c.o
examples/simple.app/Contents/MacOS/simple: examples/CMakeFiles/simple.dir/__/deps/glad.c.o
examples/simple.app/Contents/MacOS/simple: examples/CMakeFiles/simple.dir/build.make
examples/simple.app/Contents/MacOS/simple: src/libglfw3.a
examples/simple.app/Contents/MacOS/simple: examples/CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable simple.app/Contents/MacOS/simple"
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/simple.dir/build: examples/simple.app/Contents/MacOS/simple
examples/CMakeFiles/simple.dir/build: examples/simple.app/Contents/Resources/glfw.icns

.PHONY : examples/CMakeFiles/simple.dir/build

examples/CMakeFiles/simple.dir/requires: examples/CMakeFiles/simple.dir/simple.c.o.requires
examples/CMakeFiles/simple.dir/requires: examples/CMakeFiles/simple.dir/__/deps/glad.c.o.requires

.PHONY : examples/CMakeFiles/simple.dir/requires

examples/CMakeFiles/simple.dir/clean:
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/simple.dir/clean

examples/CMakeFiles/simple.dir/depend:
	cd /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1 /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/examples /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples /Users/zewenhuang/Projects/github/something/shared/glfw-3.2.1/build/examples/CMakeFiles/simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/simple.dir/depend

