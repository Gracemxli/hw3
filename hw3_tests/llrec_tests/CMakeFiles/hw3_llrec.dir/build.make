# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/graceli/Documents/GitHub/hw3/hw3_tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/graceli/Documents/GitHub/hw3/hw3_tests

# Include any dependencies generated for this target.
include llrec_tests/CMakeFiles/hw3_llrec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include llrec_tests/CMakeFiles/hw3_llrec.dir/compiler_depend.make

# Include the progress variables for this target.
include llrec_tests/CMakeFiles/hw3_llrec.dir/progress.make

# Include the compile flags for this target's objects.
include llrec_tests/CMakeFiles/hw3_llrec.dir/flags.make

llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o: llrec_tests/CMakeFiles/hw3_llrec.dir/flags.make
llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o: /Users/graceli/Documents/GitHub/hw3/llrec.cpp
llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o: llrec_tests/CMakeFiles/hw3_llrec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/graceli/Documents/GitHub/hw3/hw3_tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o"
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o -MF CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o.d -o CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o -c /Users/graceli/Documents/GitHub/hw3/llrec.cpp

llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.i"
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/graceli/Documents/GitHub/hw3/llrec.cpp > CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.i

llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.s"
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/graceli/Documents/GitHub/hw3/llrec.cpp -o CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.s

# Object files for target hw3_llrec
hw3_llrec_OBJECTS = \
"CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o"

# External object files for target hw3_llrec
hw3_llrec_EXTERNAL_OBJECTS =

llrec_tests/libhw3_llrec.a: llrec_tests/CMakeFiles/hw3_llrec.dir/Users/graceli/Documents/GitHub/hw3/llrec.cpp.o
llrec_tests/libhw3_llrec.a: llrec_tests/CMakeFiles/hw3_llrec.dir/build.make
llrec_tests/libhw3_llrec.a: llrec_tests/CMakeFiles/hw3_llrec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/graceli/Documents/GitHub/hw3/hw3_tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libhw3_llrec.a"
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests && $(CMAKE_COMMAND) -P CMakeFiles/hw3_llrec.dir/cmake_clean_target.cmake
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw3_llrec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
llrec_tests/CMakeFiles/hw3_llrec.dir/build: llrec_tests/libhw3_llrec.a
.PHONY : llrec_tests/CMakeFiles/hw3_llrec.dir/build

llrec_tests/CMakeFiles/hw3_llrec.dir/clean:
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests && $(CMAKE_COMMAND) -P CMakeFiles/hw3_llrec.dir/cmake_clean.cmake
.PHONY : llrec_tests/CMakeFiles/hw3_llrec.dir/clean

llrec_tests/CMakeFiles/hw3_llrec.dir/depend:
	cd /Users/graceli/Documents/GitHub/hw3/hw3_tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/graceli/Documents/GitHub/hw3/hw3_tests /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests /Users/graceli/Documents/GitHub/hw3/hw3_tests /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests /Users/graceli/Documents/GitHub/hw3/hw3_tests/llrec_tests/CMakeFiles/hw3_llrec.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : llrec_tests/CMakeFiles/hw3_llrec.dir/depend
