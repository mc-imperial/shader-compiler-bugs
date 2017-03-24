#version 100
//WebGL

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
precision highp int;
#else
precision mediump float;
precision mediump int;
#endif
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

uniform vec2 injectionSwitch;

uniform vec2 resolution;

float lengthReplace(vec2 p, float n)
{
    return pow((pow(p.x, ((((injectionSwitch.x > injectionSwitch.y)) ? (1.0) : n))) + pow(p.y, n)), 1.0 / n);
}
float smin(float a, float b, float k)
{
    float res = exp(- k * a) + exp(- k * b);
    return - log(res) / k;
}
float sdBox(vec3 p, vec3 b)
{
    vec3 d = abs(p) - b;
    return min(max(d.x, max(d.y, d.z)), 0.0) + length(max(d, 0.0));
}
float sdTorus88(vec3 p, vec2 t)
{
    vec2 q = vec2(lengthReplace(p.xz, 8.0) - (t.x * 0.8), p.y);
    return lengthReplace(q, 8.0) - t.y;
}
float map(vec3 p)
{
    float cube = 0.2;
    float grid = 1.0;
    float grid_half = grid * 0.5;
    vec3 p1 = mod(p, grid) - grid_half;
    float s1 = sdBox(p1, vec3(cube));
    float s2 = sdTorus88(p1, vec2(cube, cube / 2.0));
    return float(smin(s1, s2, 32.0));
    return s2;
}
vec3 genNormal(vec3 p)
{
    const float d = 0.01;
    return normalize(vec3(map(p + vec3(d, 0.0, 0.0)) - map(p + vec3(- d, 0.0, 0.0)), map(p + vec3(0.0, d, 0.0)) - map(p + vec3(0.0, - d, 0.0)), map(p + vec3(0.0, 0.0, d)) - map(p + vec3(0.0, 0.0, - d))));
}
void main()
{
    vec2 pos = (gl_FragCoord.xy * 2.0 - resolution.xy) / resolution.y;
    vec3 camPos = vec3(- 0.0, 0.0, 3.0);
    vec3 camDir = normalize(vec3(0.0, 0.0, - 1.0));
    vec3 camUp = normalize(vec3(0.0, 1.0, 0.0));
    vec3 camSide = cross(camDir, camUp);
    float focus = 1.8;
    vec3 rayDir = normalize(camSide * pos.x + camUp * pos.y + camDir * focus);
    vec3 ray = camPos;
    int march = 0;
    float d = 0.0;
    float total_d = 0.0;
    const int MAX_MARCH = 64;
    const float MAX_DIST = 100.0;
    for(
        int mi = 0;
        mi < MAX_MARCH;
        ++ mi
    )
        {
            d = map(ray);
            march = mi;
            total_d += d;
            ray += rayDir * d;
            if(d < 0.001)
                {
                    break;
                }
            if(total_d > MAX_DIST)
                {
                    total_d = MAX_DIST;
                    march = MAX_MARCH - 1;
                    break;
                }
        }
    float glow = 0.0;
    float fog = min(1.0, (1.0 / float(MAX_MARCH)) * float(march)) * 1.0;
    vec3 fog2 = 0.01 * vec3(1, 1, 1.5) * total_d;
    gl_FragColor = vec4(vec3(0.55, 0.55, 0.5) * fog + fog2, 1.0);
    gl_FragColor = vec4(genNormal(ray), 1.0);
}
