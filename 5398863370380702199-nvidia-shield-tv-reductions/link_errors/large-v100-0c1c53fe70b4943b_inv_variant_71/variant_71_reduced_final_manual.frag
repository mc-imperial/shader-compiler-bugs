#version 100

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

void main()
{
    for(int r = 0; r < 6; r ++)
    {
        vec3 dir = vec3(injectionSwitch, 1.);
        dir.xz *= mat2(1.0);
    }
}
