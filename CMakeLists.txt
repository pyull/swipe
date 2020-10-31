cmake_minimum_required(VERSION 3.17.2)
project(swipe VERSION 0.1)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(MINGW)
   set(CMAKE_SHARED_LIBRARY_PREFIX "")
   set(CMAKE_STATIC_LIBRARY_PREFIX "")
endif()

add_library(swipe
    SHARED
    dllmain.c
    swipe.c
    vector.c)

target_link_libraries(swipe PUBLIC fftw3 lapack)