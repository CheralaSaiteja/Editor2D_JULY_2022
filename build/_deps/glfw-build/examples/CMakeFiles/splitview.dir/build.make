# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/teja/Desktop/Editor2D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/teja/Desktop/Editor2D/build

# Include any dependencies generated for this target.
include _deps/glfw-build/examples/CMakeFiles/splitview.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/glfw-build/examples/CMakeFiles/splitview.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/glfw-build/examples/CMakeFiles/splitview.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/glfw-build/examples/CMakeFiles/splitview.dir/flags.make

_deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.o: _deps/glfw-build/examples/CMakeFiles/splitview.dir/flags.make
_deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.o: _deps/glfw-src/examples/splitview.c
_deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.o: _deps/glfw-build/examples/CMakeFiles/splitview.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.o"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.o -MF CMakeFiles/splitview.dir/splitview.c.o.d -o CMakeFiles/splitview.dir/splitview.c.o -c /home/teja/Desktop/Editor2D/build/_deps/glfw-src/examples/splitview.c

_deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/splitview.c.i"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teja/Desktop/Editor2D/build/_deps/glfw-src/examples/splitview.c > CMakeFiles/splitview.dir/splitview.c.i

_deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/splitview.c.s"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teja/Desktop/Editor2D/build/_deps/glfw-src/examples/splitview.c -o CMakeFiles/splitview.dir/splitview.c.s

_deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.o: _deps/glfw-build/examples/CMakeFiles/splitview.dir/flags.make
_deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.o: _deps/glfw-src/deps/glad_gl.c
_deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.o: _deps/glfw-build/examples/CMakeFiles/splitview.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.o"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.o -MF CMakeFiles/splitview.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/splitview.dir/__/deps/glad_gl.c.o -c /home/teja/Desktop/Editor2D/build/_deps/glfw-src/deps/glad_gl.c

_deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/__/deps/glad_gl.c.i"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teja/Desktop/Editor2D/build/_deps/glfw-src/deps/glad_gl.c > CMakeFiles/splitview.dir/__/deps/glad_gl.c.i

_deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/__/deps/glad_gl.c.s"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teja/Desktop/Editor2D/build/_deps/glfw-src/deps/glad_gl.c -o CMakeFiles/splitview.dir/__/deps/glad_gl.c.s

# Object files for target splitview
splitview_OBJECTS = \
"CMakeFiles/splitview.dir/splitview.c.o" \
"CMakeFiles/splitview.dir/__/deps/glad_gl.c.o"

# External object files for target splitview
splitview_EXTERNAL_OBJECTS =

_deps/glfw-build/examples/splitview: _deps/glfw-build/examples/CMakeFiles/splitview.dir/splitview.c.o
_deps/glfw-build/examples/splitview: _deps/glfw-build/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.o
_deps/glfw-build/examples/splitview: _deps/glfw-build/examples/CMakeFiles/splitview.dir/build.make
_deps/glfw-build/examples/splitview: _deps/glfw-build/src/libglfw3.a
_deps/glfw-build/examples/splitview: /usr/lib/x86_64-linux-gnu/libm.so
_deps/glfw-build/examples/splitview: /usr/lib/x86_64-linux-gnu/librt.a
_deps/glfw-build/examples/splitview: /usr/lib/x86_64-linux-gnu/libm.so
_deps/glfw-build/examples/splitview: /usr/lib/x86_64-linux-gnu/libX11.so
_deps/glfw-build/examples/splitview: _deps/glfw-build/examples/CMakeFiles/splitview.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable splitview"
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/splitview.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/glfw-build/examples/CMakeFiles/splitview.dir/build: _deps/glfw-build/examples/splitview
.PHONY : _deps/glfw-build/examples/CMakeFiles/splitview.dir/build

_deps/glfw-build/examples/CMakeFiles/splitview.dir/clean:
	cd /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples && $(CMAKE_COMMAND) -P CMakeFiles/splitview.dir/cmake_clean.cmake
.PHONY : _deps/glfw-build/examples/CMakeFiles/splitview.dir/clean

_deps/glfw-build/examples/CMakeFiles/splitview.dir/depend:
	cd /home/teja/Desktop/Editor2D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teja/Desktop/Editor2D /home/teja/Desktop/Editor2D/build/_deps/glfw-src/examples /home/teja/Desktop/Editor2D/build /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples /home/teja/Desktop/Editor2D/build/_deps/glfw-build/examples/CMakeFiles/splitview.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/glfw-build/examples/CMakeFiles/splitview.dir/depend

