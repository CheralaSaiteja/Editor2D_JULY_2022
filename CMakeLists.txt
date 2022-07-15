cmake_minimum_required(VERSION 3.0.0)
project(Editor2D VERSION 0.1.0)

set(CXX_STANDARD_REQUIRED 17)

file(GLOB_RECURSE SRC src/*.cpp)

add_subdirectory(Core)

add_executable(Editor2D main.cpp ${SRC})

set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY})

target_include_directories(${PROJECT_NAME} PUBLIC include/)
target_link_libraries(${PROJECT_NAME} PUBLIC Core)
