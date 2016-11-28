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

uniform vec2 injectionSwitch;

uniform float time;

uniform vec2 resolution;

float tglad_formula(vec3 z0)
{
    z0 = mod(z0, 2.);
    float mr = 0.25, mxr = 1.0;
    vec4 scale = vec4(- 3.12, - 3.12, - 3.12, 3.12), p0 = vec4(0.0, 1.59, - 1.0, 0.0);
    vec4 z = vec4(z0, 1.0);
    for(
        int n = 0;
        n < 3;
        n ++
    )
        {
            z.xyz = clamp(z.xyz, - 0.94, 0.94) * 2.0 - z.xyz;
            z *= scale / clamp(dot(z.xyz, z.xyz), mr, mxr) * 1.;
            z += p0;
        }
    float dS = (length(max(abs(z.xyz) - vec3(1.2, 49.0, 1.4), 0.0)) - 0.06) / z.w;
    return dS;
}
float map(vec3 p)
{
    return tglad_formula(p);
}
vec3 guess_normal(vec3 p)
{
    const float d = 0.001;
    return normalize(vec3(map(p + vec3(d, 0.0, 0.0)) - map(p + vec3(- d, 0.0, 0.0)), map(p + vec3(0.0, d, 0.0)) - map(p + vec3(0.0, - d, 0.0)), map(p + vec3(0.0, 0.0, d)) - map(p + vec3(0.0, 0.0, - d))));
}
vec2 pattern(vec2 p)
{
    p = fract(p);
    float r = 0.123;
    float v = 0.0, g = 0.0;
    r = fract(r * 9184.928);
    float cp, d;
    d = p.x;
    g += pow(clamp(1.0 - abs(d), 0.0, 1.0), 1000.0);
    d = p.y;
    g += pow(clamp(1.0 - abs(d), 0.0, 1.0), 1000.0);
    d = p.x - 1.0;
    g += pow(clamp(3.0 - abs(d), 0.0, 1.0), 1000.0);
    d = p.y - 1.0;
    g += pow(clamp(1.0 - abs(d), 0.0, 1.0), 10000.0);
    const int iter = 12;
    for(
        int i = 0;
        i < iter;
        i ++
    )
        {
            cp = 0.5 + (r - 0.5) * 0.9;
            d = p.x - cp;
            g += pow(clamp(1.0 - abs(d), 0.0, 1.0), 200.0);
            if(d > 0.0)
                {
                    r = fract(r * 4829.013);
                    p.x = (p.x - cp) / (1.0 - cp);
                    v += 1.0;
                }
            else
                {
                    r = fract(r * 129.528);
                    p.x = p.x / cp;
                }
            p = p.yx;
        }
    v /= float(iter);
    return vec2(g, v);
}
vec2 sphere_mapping(vec3 p)
{
    return vec2(asin(p.x) / 3.14159265359 + 0.5, asin(p.y) / 3.14159265359 + 0.5);
}
mat3 axis_rotation_matrix33(vec3 axis, float angle)
{
    axis = normalize(axis);
    float s = sin(angle);
    float c = cos(angle);
    float oc = 1.0 - c;
    return mat3(oc * axis.x * axis.x + c, oc * axis.x * axis.y - axis.z * s, oc * axis.z * axis.x + axis.y * s, oc * axis.x * axis.y + axis.z * s, oc * axis.y * axis.y + c, oc * axis.y * axis.z - axis.x * s, oc * axis.z * axis.x - axis.y * s, oc * axis.y * axis.z + axis.x * s, oc * axis.z * axis.z + c);
}
void main(void)
{
    vec2 pos = (gl_FragCoord.xy * 2.0 - resolution.xy) / resolution.y;
    vec3 camPos = vec3(5.0 * cos(time * 0.1), 0.5 * sin(time * 0.2), 5.0 * sin(time * 0.1));
    vec3 camDir = normalize(camPos);
    vec3 camUp = normalize(vec3(0.0, 1.0 + cos(time * 0.1) * 0.75, sin(time * 0.1) * 0.75));
    camUp = axis_rotation_matrix33(cross(camDir, camUp), 90.0 * (3.14159265359 / 180.0)) * camDir;
    vec3 camSide = cross(camDir, camUp);
    float fovy = 60.0;
    vec3 rayDir = normalize(camSide * - pos.x + camUp * - pos.y + camDir * 1.0 / tan(fovy * 0.5 * (3.14159265359 / 180.0)));
    vec3 ray = camPos;
    float m = 0.0;
    float d = 0.0, total_d = 0.0;
    const int MAX_MARCH = 100;
    const float MAX_DISTANCE = 100.0;
    for(
        int i = 0;
        i < MAX_MARCH;
        ++ i
    )
        {
            d = map(ray);
            total_d += d;
            ray += rayDir * d;
            m += 1.0;
            if(d < 0.001)
                {
                    break;
                    discard;
                }
            if(total_d > MAX_DISTANCE)
                {
                    break;
                }
        }
    vec3 normal = guess_normal(ray);
    float r = mod(time * 2.0, 20.0);
    float glow = max((mod(length(ray) - time * 1.5, 10.0) - 9.0) * 2.5, 0.0);
    vec3 gp = abs(mod(ray, vec3(0.4)));
    vec2 p = pattern(sphere_mapping(normalize(ray) * mod(length(ray), 1.0)) * 2.0);
    if(p.x < 1.4)
        {
            glow = 0.0;
        }
    else
        {
            glow += 0.0;
        }
    glow += max(1.0 - abs(dot(- camDir, normal)) - 0.4, 0.0) * 0.5;
    float c = (total_d) * 0.01;
    vec4 result = vec4(vec3(c, c, c) + vec3(0.02, 0.02, 0.025) * m * 0.4, 1.0);
    result.xyz += vec3(0.5, 0.5, 0.75) * glow;
    gl_FragColor = result;
}
