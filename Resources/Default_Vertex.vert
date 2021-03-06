#version 460 core

layout(location=0)in vec3 aPos;
layout(location=1)in vec2 aTCoord;

out vec2 TCoord;

uniform mat4 mvp;

void main(){
    gl_Position=mvp*vec4(aPos,1.);
}