# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build

# Include any dependencies generated for this target.
include dep/glfw/examples/CMakeFiles/offscreen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dep/glfw/examples/CMakeFiles/offscreen.dir/compiler_depend.make

# Include the progress variables for this target.
include dep/glfw/examples/CMakeFiles/offscreen.dir/progress.make

# Include the compile flags for this target's objects.
include dep/glfw/examples/CMakeFiles/offscreen.dir/flags.make

dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.o: dep/glfw/examples/CMakeFiles/offscreen.dir/flags.make
dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.o: /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/examples/offscreen.c
dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.o: dep/glfw/examples/CMakeFiles/offscreen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.o"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.o -MF CMakeFiles/offscreen.dir/offscreen.c.o.d -o CMakeFiles/offscreen.dir/offscreen.c.o -c /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/examples/offscreen.c

dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/offscreen.dir/offscreen.c.i"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/examples/offscreen.c > CMakeFiles/offscreen.dir/offscreen.c.i

dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/offscreen.dir/offscreen.c.s"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/examples/offscreen.c -o CMakeFiles/offscreen.dir/offscreen.c.s

dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o: dep/glfw/examples/CMakeFiles/offscreen.dir/flags.make
dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o: /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/deps/glad_gl.c
dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o: dep/glfw/examples/CMakeFiles/offscreen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o -MF CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o -c /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/deps/glad_gl.c

dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/offscreen.dir/__/deps/glad_gl.c.i"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/deps/glad_gl.c > CMakeFiles/offscreen.dir/__/deps/glad_gl.c.i

dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/offscreen.dir/__/deps/glad_gl.c.s"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/deps/glad_gl.c -o CMakeFiles/offscreen.dir/__/deps/glad_gl.c.s

# Object files for target offscreen
offscreen_OBJECTS = \
"CMakeFiles/offscreen.dir/offscreen.c.o" \
"CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o"

# External object files for target offscreen
offscreen_EXTERNAL_OBJECTS =

dep/glfw/examples/offscreen: dep/glfw/examples/CMakeFiles/offscreen.dir/offscreen.c.o
dep/glfw/examples/offscreen: dep/glfw/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o
dep/glfw/examples/offscreen: dep/glfw/examples/CMakeFiles/offscreen.dir/build.make
dep/glfw/examples/offscreen: dep/glfw/src/libglfw3.a
dep/glfw/examples/offscreen: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/examples/offscreen: /usr/lib/x86_64-linux-gnu/librt.so
dep/glfw/examples/offscreen: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/examples/offscreen: /usr/lib/x86_64-linux-gnu/libX11.so
dep/glfw/examples/offscreen: dep/glfw/examples/CMakeFiles/offscreen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable offscreen"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/offscreen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dep/glfw/examples/CMakeFiles/offscreen.dir/build: dep/glfw/examples/offscreen
.PHONY : dep/glfw/examples/CMakeFiles/offscreen.dir/build

dep/glfw/examples/CMakeFiles/offscreen.dir/clean:
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/offscreen.dir/cmake_clean.cmake
.PHONY : dep/glfw/examples/CMakeFiles/offscreen.dir/clean

dep/glfw/examples/CMakeFiles/offscreen.dir/depend:
	cd /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/dep/glfw/examples /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples /cal/exterieurs/ngalmiche-22/IG3DA/SmokeSim/build/dep/glfw/examples/CMakeFiles/offscreen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dep/glfw/examples/CMakeFiles/offscreen.dir/depend

