#ifndef COMPONENTS_HPP
#define COMPONENTS_HPP

// MATH / GLM
#include "glm/fwd.hpp"
#include <glm/glm.hpp>

struct Component {};
using namespace glm;
struct Transform : Component {
  vec3 Position = vec3(0);
  vec3 Rotation = vec3(0.000000001);
  vec3 Scale = vec3(1);
};
struct Mesh2D : Component {
  float *vertexData;
  int *indices;
  unsigned int indexLength, vertexLength;
};
struct MeshRenderer : Component {
  unsigned int vertexArrayObject, vertexBufferObject, indexBufferObject;
  unsigned short int indexLength, vertexLength;
  unsigned int shaderProgram, mvpLocation;
};
struct GameObject {
  Transform transform;
  MeshRenderer meshrenderer;
};
#endif