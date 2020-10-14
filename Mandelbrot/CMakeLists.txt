cmake_minimum_required(VERSION 3.17)
project(Mandelbrot C)

set(CMAKE_C_STANDARD 99)

add_executable(Mandelbrot tga.h tga.c mandelbrot.c)