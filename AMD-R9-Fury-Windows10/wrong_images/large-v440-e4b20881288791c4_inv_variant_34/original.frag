#version 440

#ifdef GL_ES
precision mediump float;
#endif

// END OF GENERATED HEADER

uniform float time;

uniform vec2 mouse;

uniform vec2 resolution;

const float pi = 3.14159;

float rand(vec3 co)
{
    return 0.9 + 0.1 * fract(sin(co.z + dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}
vec3 rotate(vec3 v, vec2 r)
{
    mat3 rxmat = mat3(1, 0, 0, 0, cos(r.y), - sin(r.y), 0, sin(r.y), cos(r.y));
    mat3 rymat = mat3(cos(r.x), 0, - sin(r.x), 0, 1, 0, sin(r.x), 0, cos(r.x));
    return (v * rxmat) * rymat;
}
vec3 norm(vec3 v)
{
    float tp = dot(v, vec3(0, - 1, 0)) * 3.;
    float bt = dot(v, vec3(0, 1, 0)) * 3.;
    float lf = dot(v, vec3(1, 0, 0)) * 3.;
    float rt = dot(v, vec3(- 1, 0, 0)) * 3.;
    float fr = dot(v, vec3(0, 0, 1)) * 3.;
    float bk = dot(v, vec3(0, 0, - 1)) * 3.;
    return v / min(min(min(min(min(tp, bt), lf), rt), fr), bk);
}
float grid(vec3 v)
{
    float g;
    g = (length(v));
    g = (1.0 - (g * g) * 2.0) * 2.0 * rand(v);
    return g * g - 0.125 * cos(fract(time) * pi * 2.0);
}
void main(void)
{
    vec2 res = vec2(resolution.x / resolution.y, 1.0);
    vec2 p = (gl_FragCoord.xy / resolution.y) - (res / 2.0);
    p = mix(p, p * (1.0 - dot(p, p) * 1.5), length(p) * 1.5);
    vec2 m = (mouse - 0.5) * pi * vec2(2., 1.);
    vec3 color = vec3(0.0);
    vec3 pos = norm(rotate(vec3(p, 0.5), vec2(m)));
    float c = grid(pos);
    color = vec3(c * (0.5 + 0.5 * pos.x), c * (0.5 + 0.5 * pos.y), c * (0.5 + 0.5 * pos.z));
    gl_FragColor = vec4(color, 1.0);
}
