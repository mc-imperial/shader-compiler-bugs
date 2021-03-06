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

uniform float time;

uniform vec2 mouse;

uniform vec2 resolution;

float field(in vec3 p)
{
    float strength = 7. + .03 * log(1.e-6 + fract(sin(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002))) * 4373.11));
    float accum = 0.;
    float prev = 0.;
    float tw = 0.;
    for(
        int i = 0;
        i < 6;
        ++ i
    )
        {
            float mag = 1. - dot(p, p);
            p = abs(p) / mag + vec3(- .5, - .8 + 0.1 * sin(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 0.7 + 2.0), - 1.1 + 0.3 * cos(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 0.3));
            float w = exp(- float(i) / 7.);
            accum += w * exp(- strength * pow(abs(mag - prev), 2.3));
            tw += w;
            prev = mag;
        }
    return max(0., 5. * accum / tw - .7);
}
void main()
{
    vec2 uv2 = 2. * gl_FragCoord.xy / resolution.xy - 1.;
    vec2 uvs = uv2 * resolution.xy / max(resolution.x, resolution.y);
    uvs *= 10.0 + 1.1 * sin(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 1.5);
    float time2 = abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002));
    float speed = 0.0010;
    speed = 0.005 * cos(time2 * 0.02 + 3.1415926 / 4.0);
    float formuparam = 0.79;
    vec2 uv = uvs;
    for(
        float j = 0.0;
        j < 3.0;
        j += 0.5
    )
        {
            uv /= j - dot(uv, uv) * sin(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 0.1 + 0.5 * sin((abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) + j) * 0.05));
            uv *= 1.0 - length(uv) * 0.3 / (j + 1.0);
            if(sin(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 0.001) * (j + 1.0) < 0.5)
                {
                    break;
                }
        }
    uv /= 1.0 - dot(gl_FragCoord.xy / resolution.xy - mouse, gl_FragCoord.xy / resolution.xy - mouse) * 0.3;
    float a_xz = 0.9;
    float a_yz = - .6;
    float a_xy = 0.9 + abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 0.1;
    mat2 rot_xz = mat2(cos(a_xz), sin(a_xz), - sin(a_xz), cos(a_xz));
    mat2 rot_yz = mat2(cos(a_yz), sin(a_yz), - sin(a_yz), cos(a_yz));
    mat2 rot_xy = mat2(cos(a_xy), sin(a_xy), - sin(a_xy), cos(a_xy));
    float v2 = 1.0;
    vec3 dir = vec3(uv * 0.900, 1.);
    vec3 from = vec3(0.0, 0.0, 0.0);
    from.x -= 5.0 * (mouse.x - 0.5);
    from.y -= 5.0 * (mouse.y - 0.5);
    vec3 forward = vec3(0., 0., 1.);
    from.x += 0.900 * 2.0 * (1.0) * cos(0.01 * abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002))) + 0.001 * abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002));
    from.y += 0.900 * 2.0 * (1.0) * sin(0.01 * abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002))) + 0.001 * abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002));
    from.z += 0.003 * abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002));
    dir.xy *= rot_xy;
    forward.xy *= rot_xy;
    dir.xz *= rot_xz;
    forward.xz *= rot_xz;
    dir.yz *= rot_yz;
    forward.yz *= rot_yz;
    from.xy *= - rot_xy;
    from.xz *= rot_xz;
    from.yz *= rot_yz;
    float zooom = (time2 - 3311.) * speed;
    from += forward * zooom;
    float sampleShift = mod(zooom, 0.01090);
    float zoffset = - sampleShift;
    sampleShift /= 0.01090;
    float s = 0.24;
    float s3 = s + 0.01090 / 2.0;
    vec3 v = vec3(0.);
    float t3 = 0.0;
    vec3 backCol2 = vec3(0.);
    for(
        int r = 0;
        r < 27;
        r ++
    )
        {
            vec3 p2 = from + (s + zoffset) * dir;
            vec3 p3 = from + (s3 + zoffset) * dir;
            p2 = abs(vec3(0.850) - mod(p2, vec3(0.850 * 2.)));
            p3 = abs(vec3(0.850) - mod(p3, vec3(0.850 * 2.)));
            t3 = field(p3);
            float pa, a = pa = 0.;
            for(
                int i = 0;
                i < 50;
                i ++
            )
                {
                    p2 = abs(p2) / dot(p2, p2) - formuparam;
                    float D = abs(length(p2) - pa);
                    a += i > 7 ? min(12., D) : D;
                    pa = length(p2);
                }
            a *= a * a;
            float s1 = s + zoffset;
            float fade = pow(0.760, max(0., float(r) - sampleShift));
            v += fade;
            if(r == 0)
                {
                    fade *= (1. - (sampleShift));
                }
            if(r == 27 - 1)
                {
                    fade *= sampleShift;
                }
            v += vec3(s1, s1 * s1, s1 * s1 * s1 * s1) * a * 0.00012 * fade;
            backCol2 += mix(.4, 1., v2) * vec3(1.8 * t3 * t3 * t3, 1.4 * t3 * t3, t3) * fade;
            s += 0.01090;
            s3 += 0.01090;
        }
    v = mix(vec3(length(v)), v, 0.9800);
    vec4 forCol2 = vec4(v * .01, 1.);
    backCol2 *= (0.211 * sin(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002))));
    backCol2.b *= 1.8;
    backCol2.r *= 0.05;
    backCol2.b = 0.5 * mix(backCol2.g, backCol2.b, 0.8);
    backCol2.g = 0.0;
    backCol2.bg = mix(backCol2.gb, backCol2.bg, 0.5 * (cos(abs(sin(time * 1e-4 * abs(sin(mouse.x + time * .021))) * time + 121.0 * sin(time * 0.002)) * 0.01) + 1.0));
    gl_FragColor = clamp(forCol2 + vec4(backCol2, 1.0), 0.0, 0.5) * 2.0;
}
