cmake_minimum_required(VERSION 3.17)
project(Gradient C)

set(CMAKE_C_STANDARD 99)

add_executable(Gradient tga.c tga.h gradient.c)