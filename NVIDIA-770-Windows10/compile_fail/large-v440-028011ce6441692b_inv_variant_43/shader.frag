#version 440

void main(void)
{
  vec4 A[2] = vec4[2](vec4(1.0), vec4((vec2(1.0) * mat2(1.0)).x));
  int x = 1;
  vec4 y = vec4(A[x].z);
}
