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
CMAKE_BINARY_DIR = /cal/exterieurs/ngalmiche-22/IG3DA/PBD/build

# Include any dependencies generated for this target.
include CMakeFiles/tpPbd.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tpPbd.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tpPbd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tpPbd.dir/flags.make

CMakeFiles/tpPbd.dir/src/main.cpp.o: CMakeFiles/tpPbd.dir/flags.make
CMakeFiles/tpPbd.dir/src/main.cpp.o: /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/main.cpp
CMakeFiles/tpPbd.dir/src/main.cpp.o: CMakeFiles/tpPbd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tpPbd.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tpPbd.dir/src/main.cpp.o -MF CMakeFiles/tpPbd.dir/src/main.cpp.o.d -o CMakeFiles/tpPbd.dir/src/main.cpp.o -c /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/main.cpp

CMakeFiles/tpPbd.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tpPbd.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/main.cpp > CMakeFiles/tpPbd.dir/src/main.cpp.i

CMakeFiles/tpPbd.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tpPbd.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/main.cpp -o CMakeFiles/tpPbd.dir/src/main.cpp.s

CMakeFiles/tpPbd.dir/src/Mesh.cpp.o: CMakeFiles/tpPbd.dir/flags.make
CMakeFiles/tpPbd.dir/src/Mesh.cpp.o: /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/Mesh.cpp
CMakeFiles/tpPbd.dir/src/Mesh.cpp.o: CMakeFiles/tpPbd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tpPbd.dir/src/Mesh.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tpPbd.dir/src/Mesh.cpp.o -MF CMakeFiles/tpPbd.dir/src/Mesh.cpp.o.d -o CMakeFiles/tpPbd.dir/src/Mesh.cpp.o -c /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/Mesh.cpp

CMakeFiles/tpPbd.dir/src/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tpPbd.dir/src/Mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/Mesh.cpp > CMakeFiles/tpPbd.dir/src/Mesh.cpp.i

CMakeFiles/tpPbd.dir/src/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tpPbd.dir/src/Mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/Mesh.cpp -o CMakeFiles/tpPbd.dir/src/Mesh.cpp.s

CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o: CMakeFiles/tpPbd.dir/flags.make
CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o: /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/ShaderProgram.cpp
CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o: CMakeFiles/tpPbd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o -MF CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o.d -o CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o -c /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/ShaderProgram.cpp

CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/ShaderProgram.cpp > CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.i

CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/PBD/src/ShaderProgram.cpp -o CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.s

CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o: CMakeFiles/tpPbd.dir/flags.make
CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o: /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glad/src/glad.c
CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o: CMakeFiles/tpPbd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o -MF CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o.d -o CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o -c /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glad/src/glad.c

CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glad/src/glad.c > CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.i

CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cal/exterieurs/ngalmiche-22/IG3DA/PBD/dep/glad/src/glad.c -o CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.s

# Object files for target tpPbd
tpPbd_OBJECTS = \
"CMakeFiles/tpPbd.dir/src/main.cpp.o" \
"CMakeFiles/tpPbd.dir/src/Mesh.cpp.o" \
"CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o" \
"CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o"

# External object files for target tpPbd
tpPbd_EXTERNAL_OBJECTS =

tpPbd: CMakeFiles/tpPbd.dir/src/main.cpp.o
tpPbd: CMakeFiles/tpPbd.dir/src/Mesh.cpp.o
tpPbd: CMakeFiles/tpPbd.dir/src/ShaderProgram.cpp.o
tpPbd: CMakeFiles/tpPbd.dir/dep/glad/src/glad.c.o
tpPbd: CMakeFiles/tpPbd.dir/build.make
tpPbd: dep/glfw/src/libglfw3.a
tpPbd: /usr/lib/x86_64-linux-gnu/librt.so
tpPbd: /usr/lib/x86_64-linux-gnu/libm.so
tpPbd: /usr/lib/x86_64-linux-gnu/libX11.so
tpPbd: CMakeFiles/tpPbd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable tpPbd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tpPbd.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E copy /cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/tpPbd /cal/exterieurs/ngalmiche-22/IG3DA/PBD

# Rule to build all files generated by this target.
CMakeFiles/tpPbd.dir/build: tpPbd
.PHONY : CMakeFiles/tpPbd.dir/build

CMakeFiles/tpPbd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tpPbd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tpPbd.dir/clean

CMakeFiles/tpPbd.dir/depend:
	cd /cal/exterieurs/ngalmiche-22/IG3DA/PBD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cal/exterieurs/ngalmiche-22/IG3DA/PBD /cal/exterieurs/ngalmiche-22/IG3DA/PBD /cal/exterieurs/ngalmiche-22/IG3DA/PBD/build /cal/exterieurs/ngalmiche-22/IG3DA/PBD/build /cal/exterieurs/ngalmiche-22/IG3DA/PBD/build/CMakeFiles/tpPbd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tpPbd.dir/depend

