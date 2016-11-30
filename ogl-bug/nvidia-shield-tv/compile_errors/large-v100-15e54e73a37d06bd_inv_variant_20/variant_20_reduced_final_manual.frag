#version 100

#ifdef GL_ES
precision mediump float;
#endif

uniform float time;

void main(void)
{
    float foo = reflect(length(vec4(1.0)), time);
}
