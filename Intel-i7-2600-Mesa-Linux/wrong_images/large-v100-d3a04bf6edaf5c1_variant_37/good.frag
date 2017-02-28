#version 100

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
precision highp int;
#else
precision mediump float;
precision mediump int;
#endif
#endif

uniform vec2 resolution;

uniform float time;

vec2 circ(float x)
{
    return vec2(cos(x), sin(x));
}
float psin(float x)
{
    return (sin(x) + 1.) / 2.;
}
mat2 rotate(float theta)
{
    return mat2(cos(theta), - sin(theta), sin(theta), cos(theta));
}

#define O_REPLACEMENT o

vec3 myMain(vec2 uv, float time)
{
    float z = mix(2., 10., psin(time * 2.));
    vec2 c = floor(rotate(time) * uv * z);
    uv = fract(rotate(time) * uv * z);
    vec3 o = vec3(0);
    for(
        int i = 0;
        i < 3;
        i ++
    )
        {
            float j = float(i);
            O_REPLACEMENT[i] = (length(uv - .5) - (abs(sin(time + (c.x + sin(c.y + j)))) / 2.)) * 60.;
        }
    return O_REPLACEMENT;
}
void main()
{
    float mRes = min(resolution.x, resolution.y);
    vec2 uv = (((gl_FragCoord.xy * 2.0) - resolution.xy) / mRes) / 2.;
    float pR = 80.;
    uv = floor(uv * pR) / pR;
    vec3 color = clamp(myMain(uv, (floor(time * 16.) / 8.)), 0., 1.);
    for(
        float i = 0.;
        i < 32.;
        i ++
    )
        {
            color += clamp(myMain(uv + (circ(((i / 32.) + (floor(time * 16.) / 8.)) * 3.1415926535897932384626433832795) / (mRes * 1.4)), (floor(time * 16.) / 8.) + (i * 0.003)), 0., 1.);
        }
    color /= 32. + 1.;
    color *= 1. + (0.2 * abs(step(0.5, fract(uv.x * pR * .5)) - step(0.5, fract(uv.y * pR * .5))));
    color = floor(color * 3.) / 3.;
    color = mix(color, vec3((color.r + color.g + color.b) / 3.), vec3(0.5, 0.6, 1.));
    gl_FragColor = vec4(color, 1);
}
