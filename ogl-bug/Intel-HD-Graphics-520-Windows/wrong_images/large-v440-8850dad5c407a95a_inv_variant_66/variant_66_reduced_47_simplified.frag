#version 440

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

uniform vec2 injectionSwitch;

uniform float time;

uniform vec2 mouse;

uniform vec2 resolution;

vec3 iResolution;

vec4 iMouse;

float iGlobalTime;

float rand(vec2 n)
{
    return fract(cos(dot(n, vec2(12.9898, 4.1414))) * 43758.5453);
}
float noise(vec2 n)
{
    const vec2 d = vec2(0.0, 1.0);
    vec2 b = floor(n), f = smoothstep(vec2(0.0), vec2(1.0), fract(n));
    return mix(mix(rand(b), rand(b + d.yx), f.x), mix(rand(b + d.xy), rand((vec2((injectionSwitch.y), 1.0) * (b + d.yy))), f.x), f.y);
}
float fbm(vec2 n)
{
    float total = 0.0, amplitude = 1.0;
    for(
        int i = 0;
        i < 4;
        i ++
    )
        {
            total += noise(n) * amplitude;
            n += n;
            amplitude *= 0.5;
        }
    return total;
}
float dither_comp(float threshold, float value)
{
    return mod(value * 2.0, 1.0) >= threshold ? floor(value * 2.0 + 1.0) / 2.0 : floor(value * 2.0) / 2.0;
}
vec4 dither(vec2 pos, vec4 color)
{
    float threshold = mod(floor(pos.x) + floor(pos.y), 2.0) / 2.0 + mod(floor(pos.x), 2.0) / 4.0 + mod(floor(pos.x / 2.0) + floor(pos.y / 2.0), 2.0) / 8.0 + mod(floor(pos.x / 2.0), 2.0) / 16.0 + mod(floor(pos.x / 4.0) + floor(pos.y / 4.0), 2.0) / 32.0 + mod(floor(pos.x / 4.0), 2.0) / 64.0 + 1.0 / 128.0;
    return vec4(dither_comp(threshold, color.x), dither_comp(threshold, color.y), dither_comp(threshold, color.z), color.w);
}
void main()
{
    iResolution = vec3(resolution.x, resolution.y, 100.);
    iMouse = vec4(mouse.x, mouse.y, 5., 5.);
    iGlobalTime = time;
    const vec3 c1 = vec3(0.5, 0.5, 0.1);
    const vec3 c2 = vec3(0.9, 0.0, 0.0);
    const vec3 c3 = vec3(0.2, 0.0, 0.0);
    const vec3 c4 = vec3(1.0, 0.9, 0.0);
    const vec3 c5 = vec3(0.1);
    const vec3 c6 = vec3(0.9);
    vec2 p = gl_FragCoord.xy * 8.0 / iResolution.xx;
    float q = fbm(p - iGlobalTime * 0.1);
    vec2 r = vec2(fbm(p + q + iGlobalTime * 0.7 - p.x - p.y), fbm(p + q - iGlobalTime * 0.4));
    vec3 c = mix(c1, c2, fbm(p + r)) + mix(c3, c4, r.x) - mix(c5, c6, r.y);
    gl_FragColor = vec4(c * cos(1.57 * gl_FragCoord.y / iResolution.y), 1.0);
    gl_FragColor = dither(gl_FragCoord.xy, gl_FragColor);
}
