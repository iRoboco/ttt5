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
CMAKE_SOURCE_DIR = /tmp/ttt5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/ttt5/cmake-build-debug-docker

# Include any dependencies generated for this target.
include CMakeFiles/ttt5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ttt5.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ttt5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ttt5.dir/flags.make

CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o: CMakeFiles/ttt5.dir/flags.make
CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o: ../beast/app/http_server_sync.cpp
CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o: CMakeFiles/ttt5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/ttt5/cmake-build-debug-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o -MF CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o.d -o CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o -c /tmp/ttt5/beast/app/http_server_sync.cpp

CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/ttt5/beast/app/http_server_sync.cpp > CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.i

CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/ttt5/beast/app/http_server_sync.cpp -o CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.s

# Object files for target ttt5
ttt5_OBJECTS = \
"CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o"

# External object files for target ttt5
ttt5_EXTERNAL_OBJECTS =

ttt5: CMakeFiles/ttt5.dir/beast/app/http_server_sync.cpp.o
ttt5: CMakeFiles/ttt5.dir/build.make
ttt5: CMakeFiles/ttt5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/ttt5/cmake-build-debug-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ttt5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ttt5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ttt5.dir/build: ttt5
.PHONY : CMakeFiles/ttt5.dir/build

CMakeFiles/ttt5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ttt5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ttt5.dir/clean

CMakeFiles/ttt5.dir/depend:
	cd /tmp/ttt5/cmake-build-debug-docker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/ttt5 /tmp/ttt5 /tmp/ttt5/cmake-build-debug-docker /tmp/ttt5/cmake-build-debug-docker /tmp/ttt5/cmake-build-debug-docker/CMakeFiles/ttt5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ttt5.dir/depend
