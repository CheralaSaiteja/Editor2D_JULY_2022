#include <glad/glad.h>

// Others
#include "Components.hpp"
#include "Renderer.hpp"
#include "glm/fwd.hpp"
#include "glm/trigonometric.hpp"
#include <Renderer.hpp>
#include <cmath>
#include <math.h>

void Renderer::rInit() { gladLoadGL(); }
void Renderer::rSetViewPortSize(ivec2 vSize) {
  glViewport(0, 0, vSize.x, vSize.y);
}
void Renderer::rSetViewPortSize() {
  glViewport(0, 0, ViewPortSize.x, ViewPortSize.y);
}
void Renderer::rUpdate() {
  glClear(GL_COLOR_BUFFER_BIT);
  glClearColor(BackGroundColor.x, BackGroundColor.y, BackGroundColor.z, 1.0);
}
Renderer &renderer = renderer.GetInstacne();
mat4 make_translation_matrix(vec3 position, float upSize) {
  return mat4(vec4(1, 0, 0, position.x * (upSize / renderer.ViewPortSize.x)),
              vec4(0, 1, 0, position.y * (upSize / renderer.ViewPortSize.y)),
              vec4(0, 0, 1, position.z), vec4(0, 0, 0, 1));
}
// Model Matrix
mat4 CreateModelMatrix(Transform transform) {

  // Scale * Rotation * Position
  return mat4(vec4(transform.Scale.x, vec3(0)),
              vec4(0, transform.Scale.y, 0, 0),
              vec4(0, 0, transform.Scale.z, 0), vec4(vec3(0), 1)) *
         // Rotation
         mat4(vec4(cos(transform.Rotation.z), sin(transform.Rotation.z), 0, 0),
              vec4(-sin(transform.Rotation.z), cos(transform.Rotation.z), 0, 0),
              vec4(0, 0, 1, 0), vec4(0, 0, 0, 1)) *
         // Position
         mat4(vec4(1, vec3(0)), vec4(0, 1, 0, 0), vec4(0, 0, 1, 0),
              vec4(0, 0, 0, 1));
}
mat4 CreateModelMatrix(Transform transform,
                       float upSize) { // Scale * Rotation * Position
  return mat4(vec4(transform.Scale.x * (upSize / renderer.ViewPortSize.x),
                   vec3(0)),
              vec4(0, transform.Scale.y * (upSize / renderer.ViewPortSize.y), 0,
                   0),
              vec4(0, 0, transform.Scale.z, 0), vec4(vec3(0), 1)) *
         // Rotation
         mat4(vec4(cos(transform.Rotation.z), sin(transform.Rotation.z), 0, 0),
              vec4(-sin(transform.Rotation.z), cos(transform.Rotation.z), 0, 0),
              vec4(0, 0, 1, 0), vec4(0, 0, 0, 1)) *
         // Position
         make_translation_matrix(transform.Position, upSize);
}
// translation matrix

// Loading
void loadMesh2D(unsigned int &vao, unsigned int &vbo, unsigned int &ebo,
                Mesh2D &mesh) {

  // Generating vao
  glGenVertexArrays(1, &vao);
  glBindVertexArray(vao);

  // Generating vbo
  glGenBuffers(1, &vbo);
  glBindBuffer(GL_ARRAY_BUFFER, vbo);
  glBufferData(GL_ARRAY_BUFFER, sizeof(float) * mesh.vertexLength,
               mesh.vertexData, GL_STATIC_DRAW);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)0);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
                        (void *)(sizeof(float) * 3));
  glEnableVertexAttribArray(1);
  glGenBuffers(1, &ebo);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(int) * mesh.indexLength,
               mesh.indices, GL_STATIC_DRAW);
}
void loadMesh2D(MeshRenderer &mrenderer, Mesh2D &mesh) {
  // Generating vao
  glGenVertexArrays(1, &mrenderer.vertexArrayObject);
  glBindVertexArray(mrenderer.vertexArrayObject);

  // Generating vbo
  glGenBuffers(1, &mrenderer.vertexBufferObject);
  glBindBuffer(GL_ARRAY_BUFFER, mrenderer.vertexBufferObject);
  glBufferData(GL_ARRAY_BUFFER, sizeof(float) * mesh.vertexLength,
               mesh.vertexData, GL_STATIC_DRAW);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)0);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
                        (void *)(sizeof(float) * 3));
  glEnableVertexAttribArray(1);
  glGenBuffers(1, &mrenderer.indexBufferObject);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mrenderer.indexBufferObject);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(int) * mesh.indexLength,
               mesh.indices, GL_STATIC_DRAW);
  mrenderer.indexLength = mesh.indexLength;
  mrenderer.vertexLength = mesh.vertexLength;
}
void DrawElements(MeshRenderer &mrenderer) {
  glUseProgram(mrenderer.shaderProgram);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mrenderer.indexBufferObject);
  glDrawElements(GL_TRIANGLES, mrenderer.indexLength, GL_UNSIGNED_INT, 0);
}
void DrawElements(MeshRenderer &mrenderer, unsigned int modelMatrixLocation,
                  mat4 data) {
  glUseProgram(mrenderer.shaderProgram);
  glUniformMatrix4fv(modelMatrixLocation, 1, GL_TRUE, &data[0][0]);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mrenderer.indexBufferObject);
  glDrawElements(GL_TRIANGLES, mrenderer.indexLength, GL_UNSIGNED_INT, 0);
}