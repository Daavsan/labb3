# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\david\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\202.6948.80\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\david\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\202.6948.80\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Gradient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Gradient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Gradient.dir/flags.make

CMakeFiles/Gradient.dir/tga.c.obj: CMakeFiles/Gradient.dir/flags.make
CMakeFiles/Gradient.dir/tga.c.obj: ../tga.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Gradient.dir/tga.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Gradient.dir\tga.c.obj   -c C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\tga.c

CMakeFiles/Gradient.dir/tga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Gradient.dir/tga.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\tga.c > CMakeFiles\Gradient.dir\tga.c.i

CMakeFiles/Gradient.dir/tga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Gradient.dir/tga.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\tga.c -o CMakeFiles\Gradient.dir\tga.c.s

CMakeFiles/Gradient.dir/gradient.c.obj: CMakeFiles/Gradient.dir/flags.make
CMakeFiles/Gradient.dir/gradient.c.obj: ../gradient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Gradient.dir/gradient.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Gradient.dir\gradient.c.obj   -c C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\gradient.c

CMakeFiles/Gradient.dir/gradient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Gradient.dir/gradient.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\gradient.c > CMakeFiles\Gradient.dir\gradient.c.i

CMakeFiles/Gradient.dir/gradient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Gradient.dir/gradient.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\gradient.c -o CMakeFiles\Gradient.dir\gradient.c.s

# Object files for target Gradient
Gradient_OBJECTS = \
"CMakeFiles/Gradient.dir/tga.c.obj" \
"CMakeFiles/Gradient.dir/gradient.c.obj"

# External object files for target Gradient
Gradient_EXTERNAL_OBJECTS =

Gradient.exe: CMakeFiles/Gradient.dir/tga.c.obj
Gradient.exe: CMakeFiles/Gradient.dir/gradient.c.obj
Gradient.exe: CMakeFiles/Gradient.dir/build.make
Gradient.exe: CMakeFiles/Gradient.dir/linklibs.rsp
Gradient.exe: CMakeFiles/Gradient.dir/objects1.rsp
Gradient.exe: CMakeFiles/Gradient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Gradient.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Gradient.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Gradient.dir/build: Gradient.exe

.PHONY : CMakeFiles/Gradient.dir/build

CMakeFiles/Gradient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Gradient.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Gradient.dir/clean

CMakeFiles/Gradient.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Gradient\cmake-build-debug\CMakeFiles\Gradient.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Gradient.dir/depend
