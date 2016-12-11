#version 100
//WebGL

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

uniform float time;

uniform vec2 resolution;

float sdBox(vec2 p, vec2 b)
{
    vec2 d = abs(p) - b;
    return min(max(d.x, d.y), 0.0) + length(max(d, 0.0));
}
vec3 nrand3(vec2 co)
{
    vec3 a = fract(cos(co.x * 8.3e-3 + co.y) * vec3(1.3e5, 4.7e5, 2.9e5));
    vec3 b = fract(sin(co.x * 0.3e-3 + co.y) * (vec3(8.1e5, 1.0e5, 0.1e5) + vec3(injectionSwitch.x, 0.0, 0.0)));
    vec3 c = mix(a, b, 0.5);
    return c;
}
float map(vec3 p)
{
    p.x += time * 3.;
    p.z -= sin(time / 9.) * 10.;
    float h = 0.8;
    float rh = 1.;
    float grid = 1.6;
    float grid_half = grid * 0.5;
    float cube = 0.4;
    vec3 orig = p;
    vec3 g1 = vec3(ceil((orig.x) / grid), ceil((orig.y) / grid), ceil((orig.z) / grid));
    vec3 rxz = nrand3(g1.xz);
    vec3 ryz = nrand3(g1.yz);
    vec2 gap = vec2(rxz.x * rh, ryz.y * rh);
    float d1 = p.y + h + gap.x;
    float d2 = p.x + h + gap.y;
    vec2 p1 = mod(p.xz, vec2(grid)) - vec2(grid_half);
    float c1 = sdBox(p1, vec2(cube));
    vec2 p2 = mod(p.yz, vec2(grid)) - vec2(grid_half);
    float c2 = sdBox(p2, vec2(cube));
    return max(c1, d1);
}
void main()
{
    vec2 pos = (gl_FragCoord.xy * 2.0 - resolution.xy) / resolution.y;
    vec3 camPos = vec3(- 0.0, 0.0, 3.0);
    vec3 camDir = normalize(vec3(0.0, 0.0, - 1.0));
    camPos -= vec3(0.0, 0.0, 0);
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
    vec3 fog2 = 0.02 * vec3(1, 1, 2.5) * total_d;
    gl_FragColor = vec4(vec3(0.4, 0.1, 0.3) * fog + fog2, 1.0);
}
