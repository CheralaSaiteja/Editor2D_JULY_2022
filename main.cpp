// GLAD
#include <glad/glad.h>

// GLFW
#include <GLFW/glfw3.h>

// Others
#include <fstream>
#include <iostream>
#include <sstream>

// Editor
#include "Components.hpp"
#include "Renderer.hpp"
#include "Window.hpp"
#include "glm/fwd.hpp"
template <unsigned short int gridSize> class SNAKE_AI {
public:
  int GridSize = gridSize;
  float padding = 0.05;
  vec3 GridStartPosition = vec3(0);
  vec3 Positions[gridSize][gridSize];
  void setPositions() {
    for (int i = 0; i < GridSize; i++) {
      for (int j = 0; j < GridSize; j++) {
        Positions[i][j] = vec3((i * (padding + 2.0)) + GridStartPosition.x,
                               (j * (padding + 2.0)) + GridStartPosition.y, 0);
      }
    }
  }
  SNAKE_AI(vec3 _startPos, float _padding) {
    GridStartPosition = _startPos;
    padding = _padding;
    setPositions();
  }
};

float unitPixelSize = 45;
Window &window = window.GetInstance();
Renderer &renderer = renderer.GetInstacne();

int main(int, char **) {
  window.SetWindowSize(ivec2(1000, 1000));
  Mesh2D mesh;
  GameObject Env[2];
  {
    // Creating vertex data
    mesh.vertexData = new float[4 * 5]{-1, -1, 0.0, 0, 0, 1,  -1, 0.0, 1, 0,
                                       1,  1,  0.0, 1, 1, -1, 1,  0.0, 0, 1};

    mesh.indices = new int[6]{0, 1, 2, 2, 3, 0};

    mesh.vertexLength = 20;
    mesh.indexLength = 6;
  }

  renderer.rInit();

  window.GetWindowSize(renderer.ViewPortSize);
  renderer.rSetViewPortSize();

  loadMesh2D(Env[0].meshrenderer, mesh);
  loadMesh2D(Env[1].meshrenderer, mesh);

  Env[0].meshrenderer.shaderProgram = Env[1].meshrenderer.shaderProgram =
      LoadShader("/home/teja/Desktop/Editor2D/SNAKE_AI/vertex.glsl",
                 "/home/teja/Desktop/Editor2D/SNAKE_AI/fragment.glsl");
  unsigned int mmatrixloc =
      glGetUniformLocation(Env[0].meshrenderer.shaderProgram, "modelmatrix");
  mat4 data;
  Env[1].transform.Position = vec3(2.05, 2.05, 0);
  while (!window.ExitStatus()) {

    window.wPollEvents();
    window.wUpdate();
    renderer.rUpdate();
    data = CreateModelMatrix(Env[0].transform, unitPixelSize);
    DrawElements(Env[0].meshrenderer, mmatrixloc, data);
    data = CreateModelMatrix(Env[1].transform, unitPixelSize);
    DrawElements(Env[1].meshrenderer, mmatrixloc, data);
    window.wSwapBuffers();
  }
}
