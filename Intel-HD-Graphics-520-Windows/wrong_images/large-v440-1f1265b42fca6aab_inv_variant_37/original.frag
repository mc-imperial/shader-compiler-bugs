#version 440

#ifdef GL_ES
precision mediump float;
#endif

uniform float time;

uniform vec2 mouse;

uniform vec2 resolution;

const int balls = 40;

const float tick = 0.04;

vec4 worm_color(int i)
{
    int j = i / 4 * 4 - i;
    if(j == 0)
        {
            return vec4(0.8, 0.5, 0.5, 1.0);
        }
    return vec4(0.8, 0.7, 0.4, 1.0);
}
vec2 path(float time)
{
    time /= 18.0;
    return vec2(cos(time * 1.2), sin(time * 0.93));
}
float ease_in_out(float t)
{
    return sin(t * 3.141592653);
}
float norm(vec2 p, int offset)
{
    float a = time + float(offset) * 0.04;
    p = vec2(p.x * cos(a) - p.y * sin(a), p.x * sin(a) + p.y * cos(a));
    float e = 9.01;
    return pow(pow(p.x, e) + pow(p.y, e), 1.0 / e);
    return length(p);
}
vec4 color_at(vec2 p)
{
    vec4 hit_color = vec4(0.0);
    bool hit = false;
    for(
        int i = 0;
        i < balls;
        i ++
    )
        {
            int where = int(time / tick) - i;
            float size = 0.3 * ease_in_out((float(i) + mod(time, tick) / tick) / float(balls));
            if(norm(p - path(float(where)), where) < size && ! hit)
                {
                    hit = true;
                    hit_color = worm_color(where);
                }
        }
    return hit_color;
}
void main(void)
{
    vec2 p = (gl_FragCoord.xy - resolution.xy / 2.) / min(resolution.x, resolution.y) * 3.;
    vec4 hit_color = color_at(p);
    bool hit = hit_color != vec4(0.0);
    bool out1 = color_at(p + 0.2 * (mouse - vec2(0.5, 0.5))) != vec4(0.0);
    float fac = mod(p.y + p.x * 0.7 + sin(p.x) * 0.3 + time * 0.1, 1.0) * 0.3 + 0.7;
    vec4 color_off = vec4(.5, fac * fac * .4, fac * .3, 1.);
    gl_FragColor = hit ? hit_color : out1 ? vec4(0.1, 0.0, 0.0, 0.0) : color_off;
}
