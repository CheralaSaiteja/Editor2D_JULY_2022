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
include Core/CMakeFiles/Core.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Core/CMakeFiles/Core.dir/compiler_depend.make

# Include the progress variables for this target.
include Core/CMakeFiles/Core.dir/progress.make

# Include the compile flags for this target's objects.
include Core/CMakeFiles/Core.dir/flags.make

Core/CMakeFiles/Core.dir/src/glad.c.o: Core/CMakeFiles/Core.dir/flags.make
Core/CMakeFiles/Core.dir/src/glad.c.o: ../Core/src/glad.c
Core/CMakeFiles/Core.dir/src/glad.c.o: Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Core/CMakeFiles/Core.dir/src/glad.c.o"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Core/CMakeFiles/Core.dir/src/glad.c.o -MF CMakeFiles/Core.dir/src/glad.c.o.d -o CMakeFiles/Core.dir/src/glad.c.o -c /home/teja/Desktop/Editor2D/Core/src/glad.c

Core/CMakeFiles/Core.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Core.dir/src/glad.c.i"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teja/Desktop/Editor2D/Core/src/glad.c > CMakeFiles/Core.dir/src/glad.c.i

Core/CMakeFiles/Core.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Core.dir/src/glad.c.s"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teja/Desktop/Editor2D/Core/src/glad.c -o CMakeFiles/Core.dir/src/glad.c.s

Core/CMakeFiles/Core.dir/Renderer.cpp.o: Core/CMakeFiles/Core.dir/flags.make
Core/CMakeFiles/Core.dir/Renderer.cpp.o: ../Core/Renderer.cpp
Core/CMakeFiles/Core.dir/Renderer.cpp.o: Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Core/CMakeFiles/Core.dir/Renderer.cpp.o"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Core/CMakeFiles/Core.dir/Renderer.cpp.o -MF CMakeFiles/Core.dir/Renderer.cpp.o.d -o CMakeFiles/Core.dir/Renderer.cpp.o -c /home/teja/Desktop/Editor2D/Core/Renderer.cpp

Core/CMakeFiles/Core.dir/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Core.dir/Renderer.cpp.i"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/teja/Desktop/Editor2D/Core/Renderer.cpp > CMakeFiles/Core.dir/Renderer.cpp.i

Core/CMakeFiles/Core.dir/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Core.dir/Renderer.cpp.s"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/teja/Desktop/Editor2D/Core/Renderer.cpp -o CMakeFiles/Core.dir/Renderer.cpp.s

Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.o: Core/CMakeFiles/Core.dir/flags.make
Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.o: ../Core/src/Renderer_src.cpp
Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.o: Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.o"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.o -MF CMakeFiles/Core.dir/src/Renderer_src.cpp.o.d -o CMakeFiles/Core.dir/src/Renderer_src.cpp.o -c /home/teja/Desktop/Editor2D/Core/src/Renderer_src.cpp

Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Core.dir/src/Renderer_src.cpp.i"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/teja/Desktop/Editor2D/Core/src/Renderer_src.cpp > CMakeFiles/Core.dir/src/Renderer_src.cpp.i

Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Core.dir/src/Renderer_src.cpp.s"
	cd /home/teja/Desktop/Editor2D/build/Core && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/teja/Desktop/Editor2D/Core/src/Renderer_src.cpp -o CMakeFiles/Core.dir/src/Renderer_src.cpp.s

# Object files for target Core
Core_OBJECTS = \
"CMakeFiles/Core.dir/src/glad.c.o" \
"CMakeFiles/Core.dir/Renderer.cpp.o" \
"CMakeFiles/Core.dir/src/Renderer_src.cpp.o"

# External object files for target Core
Core_EXTERNAL_OBJECTS =

Core/libCore.so: Core/CMakeFiles/Core.dir/src/glad.c.o
Core/libCore.so: Core/CMakeFiles/Core.dir/Renderer.cpp.o
Core/libCore.so: Core/CMakeFiles/Core.dir/src/Renderer_src.cpp.o
Core/libCore.so: Core/CMakeFiles/Core.dir/build.make
Core/libCore.so: _deps/glfw-build/src/libglfw3.a
Core/libCore.so: /usr/lib/x86_64-linux-gnu/librt.a
Core/libCore.so: /usr/lib/x86_64-linux-gnu/libm.so
Core/libCore.so: /usr/lib/x86_64-linux-gnu/libX11.so
Core/libCore.so: Core/CMakeFiles/Core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/teja/Desktop/Editor2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libCore.so"
	cd /home/teja/Desktop/Editor2D/build/Core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Core/CMakeFiles/Core.dir/build: Core/libCore.so
.PHONY : Core/CMakeFiles/Core.dir/build

Core/CMakeFiles/Core.dir/clean:
	cd /home/teja/Desktop/Editor2D/build/Core && $(CMAKE_COMMAND) -P CMakeFiles/Core.dir/cmake_clean.cmake
.PHONY : Core/CMakeFiles/Core.dir/clean

Core/CMakeFiles/Core.dir/depend:
	cd /home/teja/Desktop/Editor2D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teja/Desktop/Editor2D /home/teja/Desktop/Editor2D/Core /home/teja/Desktop/Editor2D/build /home/teja/Desktop/Editor2D/build/Core /home/teja/Desktop/Editor2D/build/Core/CMakeFiles/Core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Core/CMakeFiles/Core.dir/depend

