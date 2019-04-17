cmake_policy(SET CMP0048 NEW)
cmake_minimum_required(VERSION 3.11)
project(EdinburghQFT 
        VERSION 1.0.0
        LANGUAGES NONE)
include(UseLATEX.cmake)

add_subdirectory(Course)
add_subdirectory(tutorials)
