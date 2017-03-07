#version 440

uniform float x;

struct T {
    mat2 c;
};

void f()
{
    T(mat2(x));
}
