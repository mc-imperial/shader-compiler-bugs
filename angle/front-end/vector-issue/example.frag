#version 100

precision mediump float;

void main() {
  vec3 v = vec3(0.0);
  for(int i = 0; i < 3; i++) {
    v.xyz[i] = v[i];
  }
}
