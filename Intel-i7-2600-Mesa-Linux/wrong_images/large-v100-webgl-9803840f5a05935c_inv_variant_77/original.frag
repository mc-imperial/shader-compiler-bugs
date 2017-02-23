#version 100

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

uniform vec2 mouse;

uniform vec2 resolution;

const float PI = 3.1415926535;

struct Ray {
    vec3 o;
    vec3 d;
};
struct HitData {
    float c;
    vec3 n;
    float d;
    Ray r;
};
vec4 hitSphere(in Ray r, in vec4 sph)
{
    vec3 oc = r.o - sph.xyz;
    float b = dot(oc, r.d);
    float c = dot(oc, oc) - sph.w * sph.w;
    float h = b * b - c;
    if(h < 0.0)
        {
            return vec4(- 1);
        }
    h = sqrt(h);
    return vec4(- b - h, normalize((r.o + r.d * (- b - h)) - sph.xyz));
}
vec4 hitPlane(in Ray r, in vec3 c, in vec3 n)
{
    float l = - dot(r.o - c, n) / dot(r.d, n);
    if(l < 0.0)
        {
            return vec4(- 1);
        }
    return vec4(l, n);
}
HitData opU(out HitData hd, in vec4 s1, in vec4 s2, in vec2 ca)
{
    if((s1.x < s2.x || s2.x <= 0.0) && s1.x > 0.0)
        {
            hd.c = ca.x;
            hd.d = s1.x;
            hd.n = s1.yzw;
        }
    else
        {
            if((s2.x < s1.x || s1.x <= 0.0) && s2.x > 0.0)
                {
                    hd.c = ca.y;
                    hd.d = s2.x;
                    hd.n = s2.yzw;
                }
        }
    return hd;
}
HitData scene(in Ray r)
{
    HitData hd = HitData(0.0, vec3(0), - 1.0, r);
    vec4 d1 = hitSphere(r, vec4(0, 0, 0, 1));
    vec4 d2 = hitPlane(r, vec3(0, - 2, 0), vec3(0, 1, 0));
    return opU(hd, d1, d2, vec2(82, 640));
}
HitData raytrace(in Ray r)
{
    return scene(r);
}
mat3 camera(in vec3 eye, in vec3 lat)
{
    vec3 ww = normalize(lat - eye);
    vec3 uu = normalize(cross(vec3(0, 1, 0), ww));
    vec3 vv = normalize(cross(ww, uu));
    return mat3(uu, vv, ww);
}
vec3 getColor(in float n)
{
    return (0.46 + 0.3 * sin(vec3(0.03, 0.08, 0.1) * n)).rgb;
}
vec3 getChboard(in vec3 pos)
{
    return vec3(1) * mod(floor(pos.x) + floor(pos.z), 2.0);
}
vec3 orbit(in vec2 v, in float r)
{
    float mx = v.x * PI * 2.0;
    float my = min(v.y, 0.99) * PI * 0.5;
    return vec3(cos(my) * cos(mx), sin(my), cos(my) * sin(mx)) * r;
}
vec3 render(in vec2 fragCoord)
{
    vec3 pxc = vec3(0.5, 0.8, 0.9);
    float aspect = resolution.x / resolution.y;
    vec2 uv = (fragCoord / resolution) * 2.0 - 1.0;
    uv.x *= aspect;
    vec2 cur = mouse * 2.0 - 1.0;
    vec3 ro = orbit(cur, 5.0);
    vec3 rd = camera(ro, vec3(0)) * normalize(vec3(uv, 1.0));
    Ray r = Ray(ro, rd);
    HitData trc = raytrace(r);
    if(trc.d > 0.0)
        {
            vec3 hit = r.o + r.d * trc.d;
            if(hit.y <= - 1.99)
                {
                    pxc = getChboard(hit);
                }
            else
                {
                    pxc = getColor(trc.c);
                }
            pxc *= max(dot(trc.n, normalize(vec3(0, 1, 0))), 0.0);
        }
    return pxc;
}
void main()
{
    gl_FragColor = vec4(render(gl_FragCoord.xy), 1);
}
