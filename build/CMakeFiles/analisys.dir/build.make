# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/bin/cmake3

# The command to remove a file.
RM = /usr/bin/cmake3 -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build

# Include any dependencies generated for this target.
include CMakeFiles/analisys.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/analisys.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/analisys.dir/flags.make

CMakeFiles/analisys.dir/src/DR.C.o: CMakeFiles/analisys.dir/flags.make
CMakeFiles/analisys.dir/src/DR.C.o: ../src/DR.C
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/analisys.dir/src/DR.C.o"
	/opt/rh/devtoolset-9/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/analisys.dir/src/DR.C.o -c /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/src/DR.C

CMakeFiles/analisys.dir/src/DR.C.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/analisys.dir/src/DR.C.i"
	/opt/rh/devtoolset-9/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/src/DR.C > CMakeFiles/analisys.dir/src/DR.C.i

CMakeFiles/analisys.dir/src/DR.C.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/analisys.dir/src/DR.C.s"
	/opt/rh/devtoolset-9/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/src/DR.C -o CMakeFiles/analisys.dir/src/DR.C.s

# Object files for target analisys
analisys_OBJECTS = \
"CMakeFiles/analisys.dir/src/DR.C.o"

# External object files for target analisys
analisys_EXTERNAL_OBJECTS =

analisys: CMakeFiles/analisys.dir/src/DR.C.o
analisys: CMakeFiles/analisys.dir/build.make
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libCore.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libImt.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libRIO.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libNet.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libHist.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libGraf.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libGraf3d.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libGpad.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libROOTDataFrame.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libTree.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libTreePlayer.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libRint.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libPostscript.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libMatrix.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libPhysics.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libMathCore.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libThread.so
analisys: /t2k/users/shvartsman/HEP-soft/root-install-node204-cpp17-01/lib/libMultiProc.so
analisys: /t2k/users/shvartsman/HEP-soft/t2k-nd280-upgrade-git/src/app/nd280UpEvent/TND280UpHit_cc.so
analisys: /t2k/users/shvartsman/HEP-soft/t2k-nd280-upgrade-git/src/app/nd280UpEvent/TND280UpTrackPoint_cc.so
analisys: /t2k/users/shvartsman/HEP-soft/t2k-nd280-upgrade-git/src/app/nd280UpEvent/TND280UpTrack_cc.so
analisys: /t2k/users/shvartsman/HEP-soft/t2k-nd280-upgrade-git/src/app/nd280UpEvent/TND280UpVertex_cc.so
analisys: /t2k/users/shvartsman/HEP-soft/t2k-nd280-upgrade-git/src/app/nd280UpEvent/TND280UpEvent_cc.so
analisys: CMakeFiles/analisys.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable analisys"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/analisys.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/analisys.dir/build: analisys

.PHONY : CMakeFiles/analisys.dir/build

CMakeFiles/analisys.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/analisys.dir/cmake_clean.cmake
.PHONY : CMakeFiles/analisys.dir/clean

CMakeFiles/analisys.dir/depend:
	cd /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build /t2k/users/shvartsman/T2KND280soft_/node204-new-scheme/an_scr/my-analisys-proj/build/CMakeFiles/analisys.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/analisys.dir/depend

