#version 100

#ifdef GL_ES
precision mediump float;
#endif

uniform float time;

uniform vec2 mouse;

uniform vec2 resolution;

vec2 scale = vec2(1.0, 1.0) * 6.0;

vec2 origin = vec2(0.0, 0.0);

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}
float pi = 3.1415926535897932384626433832795028841971693993751058209;

float tau = 6.2831853071795864769252867665590057683943387987502116419;

float rad(vec2 z)
{
    return sqrt(z.x * z.x + z.y * z.y);
}
float arg(vec2 z)
{
    if(z.x > 0.0)
        {
            return atan(z.y / z.x);
        }
    if(z.x < 0.0)
        {
            if(z.y < 0.0)
                {
                    return atan(z.y / z.x) - pi;
                }
            return atan(z.y / z.x) + pi;
        }
    if(z.y > 0.0)
        {
            return pi / 2.0;
        }
    if(z.y < 0.0)
        {
            return pi / 2.0;
        }
    return 0.0;
}
vec2 sqre(vec2 z)
{
    return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y);
}
float pow2(float x, float e)
{
    return pow(abs(x), e) * sign(x);
}
vec3 drawing(vec2 uv)
{
    float f = 1.;
    float THICK = 0.1;
    f -= (step(fract(uv.x), THICK) + step(fract(uv.y), THICK)) * 0.2;
    f = clamp(f, 0., 1.);
    vec3 s = (clamp((length(vec2(abs(uv.x) - 1., uv.y - .5)) - 0.3) * 20., 0., 1.) - clamp((length(uv) - 2.) * 20., 0., 1.)) * vec3(1., 1., 0.);
    s += clamp(- uv.y * 30., 0., 1.) * (1. - clamp((length(uv) - .7) * 20., 0., 1.));
    return (vec3(f) + s) / 2.;
}
vec2 f(vec2 z, vec2 w)
{
    return sqre(z) + 1.;
}
void main(void)
{
    vec2 z = ((gl_FragCoord.xy / resolution.xy - 0.5) * scale.xy * 2.0 + origin.xy);
    z.x *= max(resolution.y / resolution.x, resolution.x / resolution.y);
    vec2 m = ((mouse.xy - 0.5) * scale.xy + origin.xy);
    m.x *= max(resolution.y / resolution.x, resolution.x / resolution.y);
    vec2 w = f(z, m);
    float r = log(1.0 + rad(w));
    vec3 c = hsv2rgb(vec3(arg(w) / tau, 1.0 / (1.0 + 0.3 * r), 1.0 - 1.0 / (1.1 + 5.0 * r)));
    float lerp = (pow2(sin(time), 0.1) + 1.) / 2.;
    gl_FragColor = vec4(drawing(mix(z, w, lerp)), 1.0);
}
