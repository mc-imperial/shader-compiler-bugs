#version 100
//WebGL

#ifdef GL_ES
precision mediump float;
#endif

#ifndef REDUCER
#define _GLF_ZERO(X, Y)          (Y)
#define _GLF_ONE(X, Y)           (Y)
#define _GLF_FALSE(X, Y)         (Y)
#define _GLF_TRUE(X, Y)          (Y)
#define _GLF_IDENTITY(X, Y)      (Y)
#define _GLF_DEAD(X)             (X)
#define _GLF_FUZZED(X)           (X)
#define _GLF_WRAPPED_LOOP(X)     X
#define _GLF_WRAPPED_IF_TRUE(X)  X
#define _GLF_WRAPPED_IF_FALSE(X) X
#endif

// END OF GENERATED HEADER

uniform vec2 resolution;

uniform float time;

float sdSphere(vec3 p, float radius)
{
    return length(p) - radius;
}
float sdTorus(vec3 p, vec2 t)
{
    vec2 q = vec2(length(p.xz) - t.x, p.y);
    return length(q) - t.y;
}
float mix_Union(in float d1, in float d2)
{
    return min(d1, d2);
}
vec3 mix_Repetition(vec3 p, vec3 c)
{
    return mod(p, c) - 0.5 * c;
}
float distance_function(in vec3 x)
{
    return sdTorus(x + vec3(0.0, 0.0, - .5), vec2(0.3, 0.2));
    return mix_Union(sdSphere(mix_Repetition(x, vec3(3.0)), 0.1), sdTorus(x - 1.0, vec2(0.1)));
}
vec3 getNormal(vec3 p)
{
    return normalize(vec3(distance_function(p + vec3(0.001, 0.0, 0.0)) - distance_function(p + vec3(- 0.001, 0.0, 0.0)), distance_function(p + vec3(0.0, 0.001, 0.0)) - distance_function(p + vec3(0.0, - 0.001, 0.0)), distance_function(p + vec3(0.0, 0.0, 0.001)) - distance_function(p + vec3(0.0, 0.0, - 0.001))));
}
vec3 castRay(in vec3 ray_origin, in vec3 ray_direction_normal)
{
    const float mint = 0.001;
    const float maxt = 100.0;
    vec3 current_position = ray_origin;
    float _distance = 0.0;
    for(
        int i = 0;
        i < 30;
        ++ i
    )
        {
            _distance = distance_function(current_position);
            if(abs(_distance) < mint)
                {
                    break;
                    discard;
                }
            current_position += ray_direction_normal * _distance;
        }
    return current_position;
}
vec3 setCameraRay(vec3 eye, vec3 look, vec2 frag, float aspect_ratio)
{
    vec3 forward = normalize(look - eye);
    vec3 up = vec3(0.0, 1.0, 0.0);
    vec2 vvc = 2. * frag.xy - 1.;
    vvc.y /= aspect_ratio;
    vec3 right = normalize(cross(forward, up));
    vec3 new_up = cross(right, forward);
    return normalize(right * vvc.x + new_up * vvc.y + forward);
}
void main(void)
{
    vec2 position = vec2(gl_FragCoord.xy / resolution.xy);
    vec3 ray_origin = vec3(0, cos(time), 1. + sin(- time));
    vec3 look = vec3(0.0, 0.0, 0.0);
    vec3 ray_direction_normal = setCameraRay(ray_origin, look, position, 1.0);
    vec3 hit = castRay(ray_origin, ray_direction_normal);
    gl_FragColor = vec4(0.5 * getNormal(hit) + 0.5, 1.0);
}
