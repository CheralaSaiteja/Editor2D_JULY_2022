#ifndef RENDERER_HPP
#define RENDERER_HPP
#include "Components.hpp"
#include "glm/fwd.hpp"
#include <glm/glm.hpp>
#include <vector>
using namespace glm;
class Renderer {
public:
  // Default unit size in pixels is 100
  float unitSizeinPixels = 100.0;
  // Default viewport size is 800, 800
  glm::ivec2 ViewPortSize = glm::vec2(1000);
  // Default back ground color is black
  glm::vec3 BackGroundColor = glm::vec3(0);

  static Renderer &GetInstacne() {
    static Renderer instance;
    return instance;
  }
  void rInit();
  void rSetViewPortSize(ivec2 vSize);
  void rSetViewPortSize();
  void rUpdate();

private:
  Renderer() {}
  Renderer(Renderer const &);
  void operator=(Renderer const &);
};
// Loading
void loadMesh2D(unsigned int &vao, unsigned int &vbo, unsigned int &ebo,
                Mesh2D &mesh);
void loadMesh2D(MeshRenderer &mrenderer, Mesh2D &mesh);

// Drawing
void DrawElements(MeshRenderer &mrenderer);
void DrawElements(MeshRenderer &mrenderer, unsigned int modelMatrixLocation,
                  mat4 data);
// Matrices Functions
mat4 CreateModelMatrix(Transform transform);
mat4 CreateModelMatrix(Transform transform, float upSize);

// Shader Functions
unsigned int LoadShader(const char *vertexSource, const char *fragmentSource);
const char *readShaderFile(const char *shaderFilePath);
#endif