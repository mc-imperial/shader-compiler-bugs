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

uniform vec2 resolution;

uniform float time;

vec2 ObjUnion(in vec2 obj0, in vec2 obj1)
{
    if(obj0.x < 0.2)
        {
            return obj0;
        }
    else
        {
            return obj1;
        }
}
vec2 obj0(in vec3 p)
{
    return vec2(p.y + 10.0, 0);
}
vec3 obj0_c(in vec3 p)
{
    if(fract(p.x * .2) > .5)
        {
            if(fract(p.z * .5) > .5)
                {
                    return vec3(0, 0.4, sin(p.x));
                }
            else
                {
                    return vec3(1, 0.3, 1);
                }
        }
    else
        {
            if(fract(p.z * .5) > .5)
                {
                    return vec3(1, 1, 1);
                }
            else
                {
                    return vec3(0, 0.1, 0);
                }
        }
}
vec2 obj1(in vec3 p)
{
    return vec2(length(max(abs(p) - vec3(2.0, 0.2, 1), 0.0)) - 0.6, 0.6);
}
vec3 obj1_c(in vec3 p)
{
    return vec3(sin(time), 0.5, sin(time));
}
vec2 inObj(in vec3 p)
{
    return ObjUnion(obj0(p), obj1(p));
}
void main(void)
{
    vec2 vPos = - 1.0 + 2.0 * gl_FragCoord.xy / resolution.xy;
    vec3 vuv = vec3(0, 1, 0);
    vec3 vrp = vec3(1, 0, 1);
    vec3 prp = vec3(- sin(time) * 8.0, 4, cos(time) * 4.0);
    vec3 vpn = normalize(vrp - prp);
    vec3 u = normalize(cross(vuv, vpn));
    vec3 v = cross(vpn, u);
    vec3 vcv = (prp + vpn);
    vec3 scrCoord = vcv + vPos.x * u * resolution.x / resolution.y + vPos.y * v;
    vec3 scp = normalize(scrCoord - prp);
    const vec3 e = vec3(0.0, 0, 0);
    const float maxd = 60.0;
    vec2 s = vec2(0.1, 0.0);
    vec3 c, p, n;
    float f = 1.0;
    if(((injectionSwitch.x > injectionSwitch.y)))
        {
            prp += 1.0;
        }
    for(
        int i = 0;
        i < 256;
        i ++
    )
        {
            if(abs(s.x) < .01 || f > maxd)
                {
                    break;
                }
            f += s.x;
            p = prp + scp * f;
            s = inObj(p);
        }
    if(f < maxd)
        {
            if(s.y == 0.0)
                {
                    c = obj0_c(p);
                }
            else
                {
                    c = obj1_c(p);
                }
            n = normalize(vec3(s.x - inObj(p - e.xyy).x, s.x - inObj(p - e.yxy).x, s.x - inObj(p - e.yyx).x));
            float b = dot(n, normalize(prp - p));
            gl_FragColor = vec4((b * c + pow(b, 8.0)) * (1.0 - f * .01), 1.0);
        }
    else
        {
            gl_FragColor = vec4(0, 0, 0, 1);
        }
}
