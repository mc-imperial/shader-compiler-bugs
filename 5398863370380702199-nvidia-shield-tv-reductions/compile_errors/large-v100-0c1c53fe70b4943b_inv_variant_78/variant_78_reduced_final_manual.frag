#version 100

#ifdef GL_ES
precision mediump float;
#endif

void main()
{
    vec2 foo = vec2((false ? 1.0 : 1.0) + vec3(1.0));
}

