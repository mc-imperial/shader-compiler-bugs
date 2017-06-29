#version 130

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
precision highp int;
#else
precision mediump float;
precision mediump int;
#endif
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

uniform float _FLOAT_CONST[5];

uniform vec2 resolution;

float nb_mod(float limit, float ref)
{
    float s = _FLOAT_CONST[0];
    for(
        int i = 1;
        i < 800;
        i ++
    )
        {
            if(mod(float(i), ref) <= _FLOAT_CONST[1])
                {
                    s += _FLOAT_CONST[2];
                }
            do {
            if(float(i) >= limit)
                {
                    return s;
                }
            } while(gl_FragCoord.x < 0.0);
        }
    return s;
}
void main()
{
    vec4 c = vec4(_FLOAT_CONST[0], _FLOAT_CONST[0], _FLOAT_CONST[0], _FLOAT_CONST[3]);
    float ref = floor(resolution.x / _FLOAT_CONST[4]);
    c.x = nb_mod(gl_FragCoord.x, ref);
    c.y = nb_mod(gl_FragCoord.y, ref);
    c.z = c.x + c.y;
    for(
        int i = 0;
        i < 3;
        i ++
    )
        {
            if(c[i] >= _FLOAT_CONST[3])
                {
                    c[i] = c[i] * c[i];
                }
        }
    c.x = mod(c.x, _FLOAT_CONST[3]);
    c.y = mod(c.y, _FLOAT_CONST[3]);
    c.z = mod(c.z, _FLOAT_CONST[3]);
    gl_FragColor = c;
}
