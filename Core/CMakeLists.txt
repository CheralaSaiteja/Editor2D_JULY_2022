cmake_minimum_required(VERSION 3.18)
project(Core)
set(CXX_STANDARD_REQUIRED 17)
file(GLOB_RECURSE SRC src/*.cpp)

include(FetchContent)
FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG 3.3.7
)
FetchContent_MakeAvailable(glfw)

include(FetchContent)
FetchContent_Declare(
    glm
    GIT_REPOSITORY https://github.com/g-truc/glm.git
)
FetchContent_MakeAvailable(glm)

add_library(${PROJECT_NAME} SHARED src/glad.c Renderer.cpp ${SRC})
target_include_directories(${PROJECT_NAME} PUBLIC include/)
target_link_libraries(${PROJECT_NAME} PUBLIC glfw glm)