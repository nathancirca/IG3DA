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
CMAKE_SOURCE_DIR = /cal/exterieurs/ngalmiche-22/IG3DA/PBD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cal/exterieurs/ngalmiche-22/IG3DA/PBD

# Include any dependencies generated for this target.
include dep/glfw/tests/CMakeFiles/timeout.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dep/glfw/tests/CMakeFiles/timeout.dir/compiler_depend.make

# Include the progress variables for this target.
include dep/glfw/tests/CMakeFiles/timeout.dir/progress.make

# Include the compile flags for this target's objects.
include dep/glfw/tests/CMakeFiles/timeout.dir/flags.make

dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: dep/glfw/tests/CMakeFiles/timeout.dir/flags.make
dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: dep/glfw/tests/timeout.c
dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: dep/glfw/tests/CMakeFiles/timeout.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.o"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.o -MF CMakeFiles/timeout.dir/timeout.c.o.d -o CMakeFiles/timeout.dir/timeout.c.o -c /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests/timeout.c

dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timeout.dir/timeout.c.i"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests/timeout.c > CMakeFiles/timeout.dir/timeout.c.i

dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timeout.dir/timeout.c.s"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests/timeout.c -o CMakeFiles/timeout.dir/timeout.c.s

dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.o: dep/glfw/tests/CMakeFiles/timeout.dir/flags.make
dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.o: dep/glfw/deps/glad_gl.c
dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.o: dep/glfw/tests/CMakeFiles/timeout.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.o"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.o -MF CMakeFiles/timeout.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/timeout.dir/__/deps/glad_gl.c.o -c /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/deps/glad_gl.c

dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timeout.dir/__/deps/glad_gl.c.i"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/deps/glad_gl.c > CMakeFiles/timeout.dir/__/deps/glad_gl.c.i

dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timeout.dir/__/deps/glad_gl.c.s"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/deps/glad_gl.c -o CMakeFiles/timeout.dir/__/deps/glad_gl.c.s

# Object files for target timeout
timeout_OBJECTS = \
"CMakeFiles/timeout.dir/timeout.c.o" \
"CMakeFiles/timeout.dir/__/deps/glad_gl.c.o"

# External object files for target timeout
timeout_EXTERNAL_OBJECTS =

dep/glfw/tests/timeout: dep/glfw/tests/CMakeFiles/timeout.dir/timeout.c.o
dep/glfw/tests/timeout: dep/glfw/tests/CMakeFiles/timeout.dir/__/deps/glad_gl.c.o
dep/glfw/tests/timeout: dep/glfw/tests/CMakeFiles/timeout.dir/build.make
dep/glfw/tests/timeout: dep/glfw/src/libglfw3.a
dep/glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/librt.so
dep/glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libX11.so
dep/glfw/tests/timeout: dep/glfw/tests/CMakeFiles/timeout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable timeout"
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timeout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dep/glfw/tests/CMakeFiles/timeout.dir/build: dep/glfw/tests/timeout
.PHONY : dep/glfw/tests/CMakeFiles/timeout.dir/build

dep/glfw/tests/CMakeFiles/timeout.dir/clean:
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/timeout.dir/cmake_clean.cmake
.PHONY : dep/glfw/tests/CMakeFiles/timeout.dir/clean

dep/glfw/tests/CMakeFiles/timeout.dir/depend:
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cal/exterieurs/ngalmiche-22/IG3DA/PBD /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests /cal/exterieurs/ngalmiche-22/IG3DA/PBD /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glfw/tests/CMakeFiles/timeout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dep/glfw/tests/CMakeFiles/timeout.dir/depend

