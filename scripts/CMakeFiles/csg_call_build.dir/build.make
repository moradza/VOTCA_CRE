# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /mnt/a/sw/xe_xk_cle5.2UP02_pe2.3.0/bwpy/0.3.0/python-single/usr/bin/cmake

# The command to remove a file.
RM = /mnt/a/sw/xe_xk_cle5.2UP02_pe2.3.0/bwpy/0.3.0/python-single/usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /u/sciteam/moradzad/bin/votca/src/csg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /u/sciteam/moradzad/bin/votca/src/csg

# Utility rule file for csg_call_build.

# Include the progress variables for this target.
include scripts/CMakeFiles/csg_call_build.dir/progress.make

scripts/CMakeFiles/csg_call_build: scripts/csg_call


scripts/csg_call:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/u/sciteam/moradzad/bin/votca/src/csg/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating csg_call"
	cd /u/sciteam/moradzad/bin/votca/src/csg/scripts && /mnt/a/sw/xe_xk_cle5.2UP02_pe2.3.0/bwpy/0.3.0/python-single/usr/bin/cmake -DINPUT="csg_call.out" -DOUTPUT="csg_call" -DGIT_EXECUTABLE="/sw/bw/bwpy/0.3.0/python-single/usr/bin/git" -DMERCURIAL_EXECUTABLE="" -DTOP_SOURCE_DIR="/u/sciteam/moradzad/bin/votca/src/csg" -P /u/sciteam/moradzad/bin/votca/src/csg/CMakeModules/gitscript.cmake

csg_call_build: scripts/CMakeFiles/csg_call_build
csg_call_build: scripts/csg_call
csg_call_build: scripts/CMakeFiles/csg_call_build.dir/build.make

.PHONY : csg_call_build

# Rule to build all files generated by this target.
scripts/CMakeFiles/csg_call_build.dir/build: csg_call_build

.PHONY : scripts/CMakeFiles/csg_call_build.dir/build

scripts/CMakeFiles/csg_call_build.dir/clean:
	cd /u/sciteam/moradzad/bin/votca/src/csg/scripts && $(CMAKE_COMMAND) -P CMakeFiles/csg_call_build.dir/cmake_clean.cmake
.PHONY : scripts/CMakeFiles/csg_call_build.dir/clean

scripts/CMakeFiles/csg_call_build.dir/depend:
	cd /u/sciteam/moradzad/bin/votca/src/csg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /u/sciteam/moradzad/bin/votca/src/csg /u/sciteam/moradzad/bin/votca/src/csg/scripts /u/sciteam/moradzad/bin/votca/src/csg /u/sciteam/moradzad/bin/votca/src/csg/scripts /u/sciteam/moradzad/bin/votca/src/csg/scripts/CMakeFiles/csg_call_build.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : scripts/CMakeFiles/csg_call_build.dir/depend
