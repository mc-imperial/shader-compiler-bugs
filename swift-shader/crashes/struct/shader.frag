#version 100

precision mediump float;

struct S {
    mat2 rotation;
};
void main(void)
{
    float angle = 1.0;
    S(mat2(1.0, angle, 1.0, 1.0));
}
