#version 100
//WebGL

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

uniform float time;

uniform vec2 resolution;

float A, D, E;

vec3 B, C;

vec3 F(vec3 a, float b)
{
    float c = sin(b), d = cos(b);
    return mat3(d, - c, 0, c, d, 0, 0, 0, 1) * a;
}
vec3 G(vec3 a, float b)
{
    a = fract(a * .2) * 2.0 - 1.0;
    a.z = b;
    float c = 50.0;
    for(
        int i = 0;
        i < 6 + ((16 == 16 || 16 == 31) ? 1 : 0) + ((32 == 16 || 32 == 31) ? 1 : 0) * 3;
        ++ i
    )
        {
            float d = clamp(dot(a, a), .05, .65);
            c *= d;
            a = abs(a) / d - 1.31;
            a.xy = a.xy * mat2(1, 1, - 1, 1) * .7071;
        }
    return a * c;
}
vec3 H(vec3 a)
{
    float b = float(3 + ((4 == 16 || 4 == 31) ? 1 : 0) * 4);
    a = F(a, (floor(atan(a.y, a.x) * b * .5 / 3.1415) * 2.0 + 1.0) * 3.1415 / b);
    a.y = abs(a.y);
    return a;
}
vec3 I(vec3 a)
{
    a.z -= A * 1.5;
    float b = A * .5 + floor(a.z);
    return F(vec3(a.x, a.y + sin(b), fract(a.z) - .5), 3.1415 - cos(b));
}
vec3 Z(float t)
{
    return vec3(0, - sin(t * .6), t * 1.6 + .5) + sin(t * .01 * vec3(11, 23, 19)) * vec3(.135, .25, .25);
}
float P(vec3 a)
{
    vec3 b = abs(a);
    return max(max(max(b.x, b.y), b.z), max(max(length(b.xy), length(b.yz)), length(b.zx)) - .2) - 1.0;
}
float Q(vec3 a)
{
    return max(abs(length(a * vec3(1, 1, .3)) - .325) - .025, - a.z);
}
float R(vec3 a)
{
    vec3 b = abs(a);
    return max(b.y, dot(vec3(.87, .5, 0), b)) - 1.0;
}
float S(vec3 a)
{
    return max(max(abs(length(a - vec3(0.0, 0.0, 5.0)) - 5.0) - .05, R(a)), a.z - 2.0);
}
float T(vec3 a)
{
    vec3 b = I(a) * 20.0, c = H(b * 2.0 + vec3(0, 0, 2)) - vec3(1.4, 0, 0), d = b;
    d.y = abs(d.y);
    return min(min(min(min(max(R(d * 4.0 - vec3(2, 5, 0)) * .25, abs(d.z) - 1.0), S(d.yzx * vec3(1, .5, .5) * 1.5 + vec3(.3, 0, 0)) / 1.5), max(min(.1 - abs(d.x), - d.z), S(vec3(0, 0, 1) - d.xzy * vec3(1, .5, .5)))), min(min(max(P(c), - P(c * 1.2 + vec3(0, 0, 1.5)) / 1.2), Q(c + vec3(0, 0, 1.5))), Q(vec3(abs(c.xy), c.z) - vec3(.5, .5, - 1.5))) * .5) * .05, .15 - abs(a.x));
}
float U(vec3 a)
{
    return .15 - abs(a.x);
    ;
}
vec3 V(float a, vec3 b, float c)
{
    a *= c;
    return 1.0 / ((1.0 + 2.0 * b / a + b * b / (a * a)) * c + .0001);
}
vec3 W(vec3 a, float b, float c, float d)
{
    vec3 e = (V(.01, abs(a), d) * 2.0 + V(.05, vec3(length(a.yz), length(a.zx), length(a.xy)), d) * 5.0) * (sin(A * vec3(2.1, 1.3, 1.7) + b * 10.0) + 1.0);
    return (e * 7.0 + e.yzx * 1.5 + e.zxy * 1.5) * max(1.0 - c * 200.0 / d, 0.0) / d * float(100 - ((2 == 16 || 2 == 31) ? 1 : 0) * 30 - ((32 == 16 || 32 == 31) ? 1 : 0) * 80 - ((16 == 16 || 16 == 31) ? 1 : 0) * 88);
}
float X(vec3 a, float t, float b)
{
    float c = fract(t + b), e = t - c;
    vec3 f = Z(e) * vec3(0, 1, 1) + sin(vec3(0, 23, 37) * e), g = normalize(sin(vec3(0, 17, 23) * e)) * 8.0, h = f + g + vec3(sin(e * 53.0) * .15, 0, 0), j = f - g + vec3(sin(e * 73.0) * .15, 0, 0), k = mix(h, j, c - .15), l = mix(h, j, c + .15);
    t = dot(a - k, l - k) / dot(l - k, l - k);
    return length((t < 0.0 ? k : t > 1.0 ? l : k + t * (l - k)) - a);
}
vec4 Y(vec3 a, float b, float t)
{
    vec3 c = I(a) * 20.0, d = vec3(length(c + vec3(- .35, .57, 2)), length(c + vec3(- .35, - .57, 2)), length(c + vec3(.7, 0, 2))), e = V(.2, d, b), f = vec3(X(a, t, 0.0), X(a, t, .3), X(a, t, .6)), g = V(.001, f, b);
    return vec4((e.x + e.y + e.z) * vec3(30, 75, 150) * (E + 1.0) + (g.x + g.y + g.z) * vec3(1.0, .1, .2) * 5000.0, min(min(min(d.y, d.z), d.x) * .05, min(min(f.y, f.z), f.x)));
}
void main()
{
    {
        A = time + 23.984083;
        vec2 glVertex = gl_FragCoord.xy / resolution.xy * 2.0 - 1.0;
        vec3 a = float(((2 == 16 || 2 == 31) ? 1 : 0)) * normalize(sin(A * .001 * vec3(21, 11, 17))) * 20.1 + float(((16 == 16 || 16 == 31) ? 1 : 0)) * Z(A) + float(((45 == 16 || 45 == 31) ? 1 : 0)) * (vec3(0, 0, sin(A * .025)) * float(5 + ((4 == 16 || 4 == 31) ? 1 : 0) * 15 + ((8 == 16 || 8 == 31) ? 1 : 0) * 7) + sin(A * .001 * vec3(21, 11, 17)) * (.01 + float(((11 == 16 || 11 == 31) ? 1 : 0)) * .04)), b = normalize(float(((2 == 16 || 2 == 31) ? 1 : 0)) * (sin(A * .001 * vec3(26, 106, 62)) - a * .05) + float(((16 == 16 || 16 == 31) ? 1 : 0)) * (vec3(0, - sin((A + sin(A * .2) * 4.0) * .5 + A * .1), (A + sin(A * .2) * 4.0) * 1.6 + .5) - a) + float(((45 == 16 || 45 == 31) ? 1 : 0)) * (sin(A * .002 * vec3(13, 53, 31)) * 50.0 + vec3(0, 0, sin(A * .05) * 5.0) - a)), c = normalize(cross(b, sin(A * .001 * vec3(31, 17, 29))));
        float d = A * float(1 + ((16 == 16 || 16 == 31) ? 1 : 0) * 4);
        for(
            int i = 0;
            i < 20;
            ++ i
        )
            {
                float t = A - float(i) * .1;
                vec4 y = Y(Z(t), 25.0, t);
                d += float(((16 == 16 || 16 == 31) ? 1 : 0)) * sin((y.w + t) * 5.0) * y.x * .05 * exp(float(i) * - .25);
            }
        vec3 e = normalize(vec3(sin(vec2(.53, .47) * d) * 4.0 + sin(vec2(.91, 1.1) * d) * 2.0 + sin(vec2(2.3, 1.7) * d), 200)), f = normalize(cross(e, vec3(sin(d), 50, 0)));
        B = a;
        C = mat3(c, cross(c, b), b) * (f * glVertex.x * 1.78 + cross(f, e) * glVertex.y + e * 1.4);
        D = fract(sin((C.x + C.y + C.z) * 99.317 * 3.1415926546) * 85.081 * 3.1415926546);
        E = fract(sin(((((injectionSwitch.x > injectionSwitch.y ? d : A * 99.317))) + 0.0) * 3.1415926546) * 85.081 * 3.1415926546);
    }
    vec3 a = normalize(C), c = vec3(1), e = B, f = a, g = e, b = g * 0.0, s = vec3(1, - 1, - 1) * .0005;
    vec4 l = vec4(B, 1), k = l * 0.0, j = k, h = j;
    int m = 1;
    float t = 0.0, o = 1.0, p = 1.0, q = D * .01 + .99, n;
    for(
        int i = 0;
        i < 64 + ((1 == 16 || 1 == 31) ? 1 : 0) * 16 + ((16 == 16 || 16 == 31) ? 1 : 0) * 32 - ((32 == 16 || 32 == 31) ? 1 : 0) * 32;
        ++ i
    )
        {
            g = e + f * t;
            float d = T(g);
            if(d < (t * 5.0 + 1.0) * .0001)
                {
                    vec3 u = normalize(T(g + s) * s + T(g + s.yyx) * s.yyx + T(g + s.yxy) * s.yxy + T(g + s.xxx) * s.xxx);
                    float r = pow(abs(1.0 - abs(dot(u, f))), 5.0) * .9 + .1;
                    o += t * p;
                    p = p * 5.0 / r;
                    e = g + u * .0001;
                    f = reflect(f, u);
                    t = 0.0;
                    float v = dot(u, u);
                    if(v < .9 || 1.1 < v || v != v)
                        {
                            u = vec3(0);
                        }
                    if(m < 4)
                        {
                            h = j;
                            j = k;
                            k = l;
                            l = vec4(g, max(floor(o), 1.0) + clamp(r, .001, .999));
                            ++ m;
                        }
                }
            else
                {
                    t = min(t + d * q, 100.0);
                }
        }
    if(m < 4)
        {
            h = j;
            j = k;
            k = l;
            l = vec4(g, o + t * p);
            ++ m;
        }
    {
        int a = m;
        for(
            int i = 0;
            i < 4;
            ++ i
        )
            {
                if(a < 4)
                    {
                        h = j;
                        j = k;
                        k = l;
                        ++ a;
                    }
            }
    }
    e = h.xyz;
    f = normalize(j.xyz - h.xyz);
    n = length(j.xyz - h.xyz);
    t = 0.0;
    q = D * .1 + .8 + float(((11 == 16 || 11 == 31) ? 1 : 0)) * .1;
    o = 1.0;
    p = 0.0;
    for(
        int i = 0;
        i < 64 + ((1 == 16 || 1 == 31) ? 1 : 0) * 16 + ((16 == 16 || 16 == 31) ? 1 : 0) * 32 - ((32 == 16 || 32 == 31) ? 1 : 0) * 32;
        ++ i
    )
        {
            if(t > n)
                {
                    if(m < 3)
                        {
                            break;
                        }
                    h = j;
                    j = k;
                    k = l;
                    -- m;
                    e = h.xyz;
                    f = normalize(j.xyz - h.xyz);
                    n = length(j.xyz - h.xyz);
                    t = 0.0;
                    if(n < .0001)
                        {
                            break;
                        }
                    float r = fract(h.w);
                    o = h.w - r;
                    p = (floor(j.w) - o) / n;
                    c *= mix(vec3(.17, .15, .12), vec3(1), r);
                }
            g = e + f * t;
            vec4 y = Y(g, o + p * t, A);
            float u = U(g);
            u = min(u, y.w);
            g -= normalize(U(g + s) * s + U(g + s.yyx) * s.yyx + U(g + s.yxy) * s.yxy + U(g + s.xxx) * s.xxx) * u;
            float v = sin(A * .05 + g.z) * .5, w = u * q + float(((32 == 16 || 32 == 31) ? 1 : 0)) * .0005 + float(((31 == 16 || 31 == 31) ? 1 : 0)) * .001;
            vec3 x = G(g, v);
            b += (W(x, v, u, o + p * t) + W(x, v, u, o + p * t + 50.0 + float(((8 == 16 || 8 == 31) ? 1 : 0) * 50)) + y.xyz) * c * w;
            c *= pow(.7, w);
            t += w;
        }
    gl_FragColor = vec4(pow(b, vec3(.45)) - float(((1 == 16 || 1 == 31) ? 1 : 0)) * max(A * .2 - 8.0, 0.0), 1.0);
}
