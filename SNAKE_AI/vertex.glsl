#version 460 core
layout(location=0)in vec3 Pos;
uniform mat4 modelmatrix;
void main(){
    gl_Position=modelmatrix*vec4(Pos.x,Pos.y,Pos.z,1.);
}