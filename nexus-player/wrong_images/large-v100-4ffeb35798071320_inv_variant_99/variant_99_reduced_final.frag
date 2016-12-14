#version 100

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

uniform float time;

uniform vec2 mouse;

uniform vec2 resolution;

void main(void)
{
    vec2 uv = gl_FragCoord.xy / resolution.xy - .5;
    uv.y *= resolution.y / resolution.x;
    vec3 dir = vec3(uv * (1.900 * (0.5 + 0.5 * cos(0.1 * time)) + 0.5), 1.);
    float a2 = - 2.1;
    float a1 = 0.8;
    float a3 = 0.03 * time;
    mat2 rot1 = mat2(cos(a1), sin(a1), - sin(a1), cos(a1));
    mat2 rot2 = mat2(cos(a2), sin(a2), - sin(a2), cos(a2));
    mat2 rot3 = mat2(cos(a3), sin(a3), - sin(a3), cos(a3));
    dir.xy *= rot3;
    vec3 from = vec3(.3, 0., 0.);
    dir.xy += mouse.xy;
    from += vec3(.05 * time, .05 * time, - .003 * time);
    dir -= vec3(0.1 * time, .15 * time, - .003 * time);
    dir.xz *= rot1;
    dir.yz *= rot2;
    from.xz *= rot1;
    from.yz *= rot2;
    float s = .4, fade = .2;
    vec3 v = vec3(0.4);
    if(injectionSwitch.x > injectionSwitch.y)
        {
            for(
                int i = 0;
                i < 10;
                i ++
            )
                {
                    continue;
                }
        }
    for(
        int r = 0;
        r < 8;
        r ++
    )
        {
            vec3 p = from + s * dir * .5;
            p = abs(vec3(.850) - mod(p, vec3(.850 * 2.)));
            float pa, a = pa = 0.;
            for(
                int i = 0;
                i < 14;
                i ++
            )
                {
                    p = abs(p) / dot(p, p) - .54;
                    a += abs(length(p) - pa);
                    pa = length(p);
                }
            float dm = max(0., 0.400 - a * a * .001);
            a *= a * a * 2.;
            if(r > 3)
                {
                    fade *= 1. - dm;
                }
            v += fade;
            v += vec3(s, s * s, s * s * s * s) * a * (0.005 + 0.004 * (sin(0.2 * time))) * fade;
            if(injectionSwitch.x > injectionSwitch.y)
                {
                    if((p.z > 60.))
                        {
                            break;
                        }
                }
            fade *= 0.560;
            s += 0.190;
        }
    v = mix(vec3(length(v)), v, 0.800);
    gl_FragColor = vec4(v * .01, 1.);
}
