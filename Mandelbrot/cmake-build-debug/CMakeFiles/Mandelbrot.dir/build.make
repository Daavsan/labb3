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
CMAKE_COMMAND = C:\Users\david\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\202.7660.37\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\david\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\202.7660.37\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Mandelbrot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mandelbrot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mandelbrot.dir/flags.make

CMakeFiles/Mandelbrot.dir/tga.c.obj: CMakeFiles/Mandelbrot.dir/flags.make
CMakeFiles/Mandelbrot.dir/tga.c.obj: ../tga.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Mandelbrot.dir/tga.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Mandelbrot.dir\tga.c.obj   -c C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\tga.c

CMakeFiles/Mandelbrot.dir/tga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Mandelbrot.dir/tga.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\tga.c > CMakeFiles\Mandelbrot.dir\tga.c.i

CMakeFiles/Mandelbrot.dir/tga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Mandelbrot.dir/tga.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\tga.c -o CMakeFiles\Mandelbrot.dir\tga.c.s

CMakeFiles/Mandelbrot.dir/mandelbrot.c.obj: CMakeFiles/Mandelbrot.dir/flags.make
CMakeFiles/Mandelbrot.dir/mandelbrot.c.obj: ../mandelbrot.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Mandelbrot.dir/mandelbrot.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Mandelbrot.dir\mandelbrot.c.obj   -c C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\mandelbrot.c

CMakeFiles/Mandelbrot.dir/mandelbrot.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Mandelbrot.dir/mandelbrot.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\mandelbrot.c > CMakeFiles\Mandelbrot.dir\mandelbrot.c.i

CMakeFiles/Mandelbrot.dir/mandelbrot.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Mandelbrot.dir/mandelbrot.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\mandelbrot.c -o CMakeFiles\Mandelbrot.dir\mandelbrot.c.s

# Object files for target Mandelbrot
Mandelbrot_OBJECTS = \
"CMakeFiles/Mandelbrot.dir/tga.c.obj" \
"CMakeFiles/Mandelbrot.dir/mandelbrot.c.obj"

# External object files for target Mandelbrot
Mandelbrot_EXTERNAL_OBJECTS =

Mandelbrot.exe: CMakeFiles/Mandelbrot.dir/tga.c.obj
Mandelbrot.exe: CMakeFiles/Mandelbrot.dir/mandelbrot.c.obj
Mandelbrot.exe: CMakeFiles/Mandelbrot.dir/build.make
Mandelbrot.exe: CMakeFiles/Mandelbrot.dir/linklibs.rsp
Mandelbrot.exe: CMakeFiles/Mandelbrot.dir/objects1.rsp
Mandelbrot.exe: CMakeFiles/Mandelbrot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Mandelbrot.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Mandelbrot.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mandelbrot.dir/build: Mandelbrot.exe

.PHONY : CMakeFiles/Mandelbrot.dir/build

CMakeFiles/Mandelbrot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Mandelbrot.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Mandelbrot.dir/clean

CMakeFiles/Mandelbrot.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug C:\Users\david\Documents\Skola\D0017E\Labb3\3b\Mandelbrot\cmake-build-debug\CMakeFiles\Mandelbrot.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mandelbrot.dir/depend

