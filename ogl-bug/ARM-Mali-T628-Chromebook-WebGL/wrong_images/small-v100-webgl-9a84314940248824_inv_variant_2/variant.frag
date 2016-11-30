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

uniform float time;

uniform vec2 resolution;

void main()
{
    const float ZOOM = 1.0;
    const float FORMUPARAM = 0.59989;
    const int ITERATIONS = 105;
    const int INNER_ITERS = 10;
    vec2 uv = (gl_FragCoord.xy / resolution.xy) - .5 / ZOOM;
    float t = time * .10 + ((.25 + .05 * sin(time * .1)) / (length(uv.xy) + .07)) * 2.2;
    float si = sin(t);
    float co = cos(t);
    mat2 ma = mat2(co, si, - si, co);
    float c = 0.0;
    float v1 = 0.0;
    float v2 = 0.0;
    for(
        int i = 0;
        i < ITERATIONS;
        i ++
    )
        {
            float s = float(i) * .035;
            vec3 p = s * vec3(uv, 1.0 + sin(time * .015));
            p.xy *= ma;
            p += vec3(.22, .3, s - 1.5 - sin(t * .13) * .1);
            for(
                int i = 0;
                i < INNER_ITERS;
                i ++
            )
                {
                    p = abs(p) / dot(p, p) - FORMUPARAM;
                }
            v1 += dot(p, p) * .0015 * (2.8 + sin(length(uv.xy * 18.0) + .5 - t * .7));
            v2 += dot(p, p) * .0025 * (1.5 + sin(length(uv.xy * 13.5) + 1.21 - t * .3));
            c = length(p.xy * .3) * .85;
			// Changing -44252 to -1 makes the problem disappear
            for(int k = 0; k < -44252; k ++) {
            }
        }
    float len = length(uv);
    v1 *= smoothstep(.7, .0, len);
    v2 *= smoothstep(.6, .0, len);
    float re = clamp(c, 0.0, 1.0);
    float gr = clamp((v1 + c) * .25, 0.0, 1.0);
    float bl = clamp(v2, 0.0, 1.0);
    vec3 col = vec3(re, gr, bl) + smoothstep(0.15, .0, len) * 0.9;
    gl_FragColor = vec4(col, 1.0);
}
