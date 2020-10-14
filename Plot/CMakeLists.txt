cmake_minimum_required(VERSION 3.17)
project(Plot C)

set(CMAKE_C_STANDARD 99)

add_executable(Plot tga.c plot.c interp1.c)