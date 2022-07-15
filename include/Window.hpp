#ifndef WINDOW_HPP
#define WINDOW_HPP

#include <glm/glm.hpp>
using namespace glm;
#include <GLFW/glfw3.h>
struct WindowBindings {
  int windowClosekey = GLFW_KEY_ESCAPE;
};
class Window {
public:
  WindowBindings bindings;
  ivec2 windowSize = ivec2(800);
  const char *Title = "Editor2D";
  GLFWwindow *wHandle;
  static Window &GetInstance() {
    static Window instance;
    return instance;
  }
  void GetWindowSize(ivec2 &wSize) {
    glfwGetWindowSize(wHandle, &wSize.x, &wSize.y);
  }
  void SetWindowSize(ivec2 wSize) {
    glfwSetWindowSize(wHandle, wSize.x, wSize.y);
  }
  void wPollEvents() { glfwPollEvents(); }
  void wSwapBuffers() { glfwSwapBuffers(wHandle); }
  void wUpdate() {
    glfwSetWindowShouldClose(
        wHandle, glfwGetKey(wHandle, bindings.windowClosekey) == true);
  }
  int ExitStatus() { return glfwWindowShouldClose(wHandle); }

private:
  Window() {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    wHandle =
        glfwCreateWindow(windowSize.x, windowSize.y, Title, nullptr, nullptr);
    glfwMakeContextCurrent(wHandle);
  }
  ~Window() {
    glfwDestroyWindow(wHandle);
    glfwTerminate();
  }
  Window(Window const &);
  void operator=(Window const &);
};

#endif