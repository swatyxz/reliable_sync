# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/guochengying/reliable_sync/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/guochengying/reliable_sync/src/build

# Include any dependencies generated for this target.
include CMakeFiles/reliableSync.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/reliableSync.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/reliableSync.dir/flags.make

CMakeFiles/reliableSync.dir/main.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/main.cpp.o -c /home/guochengying/reliable_sync/src/main.cpp

CMakeFiles/reliableSync.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/main.cpp > CMakeFiles/reliableSync.dir/main.cpp.i

CMakeFiles/reliableSync.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/main.cpp -o CMakeFiles/reliableSync.dir/main.cpp.s

CMakeFiles/reliableSync.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/main.cpp.o.requires

CMakeFiles/reliableSync.dir/main.cpp.o.provides: CMakeFiles/reliableSync.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/main.cpp.o.provides

CMakeFiles/reliableSync.dir/main.cpp.o.provides.build: CMakeFiles/reliableSync.dir/main.cpp.o

CMakeFiles/reliableSync.dir/event.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/event.cpp.o: ../event.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/event.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/event.cpp.o -c /home/guochengying/reliable_sync/src/event.cpp

CMakeFiles/reliableSync.dir/event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/event.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/event.cpp > CMakeFiles/reliableSync.dir/event.cpp.i

CMakeFiles/reliableSync.dir/event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/event.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/event.cpp -o CMakeFiles/reliableSync.dir/event.cpp.s

CMakeFiles/reliableSync.dir/event.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/event.cpp.o.requires

CMakeFiles/reliableSync.dir/event.cpp.o.provides: CMakeFiles/reliableSync.dir/event.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/event.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/event.cpp.o.provides

CMakeFiles/reliableSync.dir/event.cpp.o.provides.build: CMakeFiles/reliableSync.dir/event.cpp.o

CMakeFiles/reliableSync.dir/list_instant.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/list_instant.cpp.o: ../list_instant.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/list_instant.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/list_instant.cpp.o -c /home/guochengying/reliable_sync/src/list_instant.cpp

CMakeFiles/reliableSync.dir/list_instant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/list_instant.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/list_instant.cpp > CMakeFiles/reliableSync.dir/list_instant.cpp.i

CMakeFiles/reliableSync.dir/list_instant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/list_instant.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/list_instant.cpp -o CMakeFiles/reliableSync.dir/list_instant.cpp.s

CMakeFiles/reliableSync.dir/list_instant.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/list_instant.cpp.o.requires

CMakeFiles/reliableSync.dir/list_instant.cpp.o.provides: CMakeFiles/reliableSync.dir/list_instant.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/list_instant.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/list_instant.cpp.o.provides

CMakeFiles/reliableSync.dir/list_instant.cpp.o.provides.build: CMakeFiles/reliableSync.dir/list_instant.cpp.o

CMakeFiles/reliableSync.dir/list_waited.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/list_waited.cpp.o: ../list_waited.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/list_waited.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/list_waited.cpp.o -c /home/guochengying/reliable_sync/src/list_waited.cpp

CMakeFiles/reliableSync.dir/list_waited.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/list_waited.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/list_waited.cpp > CMakeFiles/reliableSync.dir/list_waited.cpp.i

CMakeFiles/reliableSync.dir/list_waited.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/list_waited.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/list_waited.cpp -o CMakeFiles/reliableSync.dir/list_waited.cpp.s

CMakeFiles/reliableSync.dir/list_waited.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/list_waited.cpp.o.requires

CMakeFiles/reliableSync.dir/list_waited.cpp.o.provides: CMakeFiles/reliableSync.dir/list_waited.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/list_waited.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/list_waited.cpp.o.provides

CMakeFiles/reliableSync.dir/list_waited.cpp.o.provides.build: CMakeFiles/reliableSync.dir/list_waited.cpp.o

CMakeFiles/reliableSync.dir/mbufer.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/mbufer.cpp.o: ../mbufer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/mbufer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/mbufer.cpp.o -c /home/guochengying/reliable_sync/src/mbufer.cpp

CMakeFiles/reliableSync.dir/mbufer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/mbufer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/mbufer.cpp > CMakeFiles/reliableSync.dir/mbufer.cpp.i

CMakeFiles/reliableSync.dir/mbufer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/mbufer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/mbufer.cpp -o CMakeFiles/reliableSync.dir/mbufer.cpp.s

CMakeFiles/reliableSync.dir/mbufer.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/mbufer.cpp.o.requires

CMakeFiles/reliableSync.dir/mbufer.cpp.o.provides: CMakeFiles/reliableSync.dir/mbufer.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/mbufer.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/mbufer.cpp.o.provides

CMakeFiles/reliableSync.dir/mbufer.cpp.o.provides.build: CMakeFiles/reliableSync.dir/mbufer.cpp.o

CMakeFiles/reliableSync.dir/timer.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/timer.cpp.o: ../timer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/timer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/timer.cpp.o -c /home/guochengying/reliable_sync/src/timer.cpp

CMakeFiles/reliableSync.dir/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/timer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/timer.cpp > CMakeFiles/reliableSync.dir/timer.cpp.i

CMakeFiles/reliableSync.dir/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/timer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/timer.cpp -o CMakeFiles/reliableSync.dir/timer.cpp.s

CMakeFiles/reliableSync.dir/timer.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/timer.cpp.o.requires

CMakeFiles/reliableSync.dir/timer.cpp.o.provides: CMakeFiles/reliableSync.dir/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/timer.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/timer.cpp.o.provides

CMakeFiles/reliableSync.dir/timer.cpp.o.provides.build: CMakeFiles/reliableSync.dir/timer.cpp.o

CMakeFiles/reliableSync.dir/vos.cpp.o: CMakeFiles/reliableSync.dir/flags.make
CMakeFiles/reliableSync.dir/vos.cpp.o: ../vos.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/guochengying/reliable_sync/src/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/reliableSync.dir/vos.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reliableSync.dir/vos.cpp.o -c /home/guochengying/reliable_sync/src/vos.cpp

CMakeFiles/reliableSync.dir/vos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reliableSync.dir/vos.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/guochengying/reliable_sync/src/vos.cpp > CMakeFiles/reliableSync.dir/vos.cpp.i

CMakeFiles/reliableSync.dir/vos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reliableSync.dir/vos.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/guochengying/reliable_sync/src/vos.cpp -o CMakeFiles/reliableSync.dir/vos.cpp.s

CMakeFiles/reliableSync.dir/vos.cpp.o.requires:
.PHONY : CMakeFiles/reliableSync.dir/vos.cpp.o.requires

CMakeFiles/reliableSync.dir/vos.cpp.o.provides: CMakeFiles/reliableSync.dir/vos.cpp.o.requires
	$(MAKE) -f CMakeFiles/reliableSync.dir/build.make CMakeFiles/reliableSync.dir/vos.cpp.o.provides.build
.PHONY : CMakeFiles/reliableSync.dir/vos.cpp.o.provides

CMakeFiles/reliableSync.dir/vos.cpp.o.provides.build: CMakeFiles/reliableSync.dir/vos.cpp.o

# Object files for target reliableSync
reliableSync_OBJECTS = \
"CMakeFiles/reliableSync.dir/main.cpp.o" \
"CMakeFiles/reliableSync.dir/event.cpp.o" \
"CMakeFiles/reliableSync.dir/list_instant.cpp.o" \
"CMakeFiles/reliableSync.dir/list_waited.cpp.o" \
"CMakeFiles/reliableSync.dir/mbufer.cpp.o" \
"CMakeFiles/reliableSync.dir/timer.cpp.o" \
"CMakeFiles/reliableSync.dir/vos.cpp.o"

# External object files for target reliableSync
reliableSync_EXTERNAL_OBJECTS =

reliableSync: CMakeFiles/reliableSync.dir/main.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/event.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/list_instant.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/list_waited.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/mbufer.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/timer.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/vos.cpp.o
reliableSync: CMakeFiles/reliableSync.dir/build.make
reliableSync: CMakeFiles/reliableSync.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable reliableSync"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reliableSync.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/reliableSync.dir/build: reliableSync
.PHONY : CMakeFiles/reliableSync.dir/build

CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/main.cpp.o.requires
CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/event.cpp.o.requires
CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/list_instant.cpp.o.requires
CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/list_waited.cpp.o.requires
CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/mbufer.cpp.o.requires
CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/timer.cpp.o.requires
CMakeFiles/reliableSync.dir/requires: CMakeFiles/reliableSync.dir/vos.cpp.o.requires
.PHONY : CMakeFiles/reliableSync.dir/requires

CMakeFiles/reliableSync.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/reliableSync.dir/cmake_clean.cmake
.PHONY : CMakeFiles/reliableSync.dir/clean

CMakeFiles/reliableSync.dir/depend:
	cd /home/guochengying/reliable_sync/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guochengying/reliable_sync/src /home/guochengying/reliable_sync/src /home/guochengying/reliable_sync/src/build /home/guochengying/reliable_sync/src/build /home/guochengying/reliable_sync/src/build/CMakeFiles/reliableSync.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/reliableSync.dir/depend
