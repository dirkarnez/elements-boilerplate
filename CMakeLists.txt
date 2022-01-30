cmake_minimum_required(VERSION 3.9.6...3.15.0)

project(elements-boilerplate LANGUAGES C CXX)

set(ELEMENTS_ROOT "P:/Downloads/gopath/src/github.com/dirkarnez/cpk/cpp_libraries/elements-cd7106afe85fe99c28a3d7314a7ea5d3bd50e9c84-msvc2019/elements")

# Make sure ELEMENTS_ROOT is an absolute path to add to the CMake module path
get_filename_component(ELEMENTS_ROOT "${ELEMENTS_ROOT}" ABSOLUTE)
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};${ELEMENTS_ROOT}/cmake")

# # If we are building outside the project, you need to set ELEMENTS_ROOT:
# if (NOT ELEMENTS_BUILD_EXAMPLES)
#    #include(ElementsConfigCommon)
   
   
# endif()

set(ELEMENTS_BUILD_EXAMPLES OFF)

include_directories(
   ${ELEMENTS_ROOT}/lib 
   ${ELEMENTS_ROOT}/lib/include
)

# add_subdirectory(${ELEMENTS_ROOT} elements)

set(ELEMENTS_APP_PROJECT ${PROJECT_NAME})
set(ELEMENTS_APP_TITLE ${PROJECT_NAME})
set(ELEMENTS_APP_COPYRIGHT "Copyright (c) 2020 DirkArnez")
set(ELEMENTS_APP_ID "com.dirkarnez.hello-world")
set(ELEMENTS_APP_VERSION "1.0")

# D:\a\elements-prebuilt\elements-prebuilt\elements\lib\include\elements\window.hpp

set(ELEMENTS_APP_RESOURCES ${CMAKE_CURRENT_SOURCE_DIR}/resources/space.jpg)

include(ElementsConfigApp)

