#version 100
//WebGL

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
precision highp int;
#else
precision mediump float;
precision mediump int;
#endif
#endif

uniform vec2 injectionSwitch;

float sdBox(float p)
{
    return 1.0;
}
float map(vec3 p)
{
    float cube = 0.2;
    float s1 = sdBox(cube);
    float s2 = 1.0;
    return 1.0;
    return s2;
}
void main()
{
    const int MAX_MARCH = 50;
    for(
        int mi = 0;
        mi < MAX_MARCH;
        ++ mi
    )
        {
            map(vec3(1.0));
            discard;
        }
}

/*

With Google Chrome Version 57.0.2987.110 (64-bit)

Failed to link shader program.
C:\fakepath(29,56-76): internal error: invalid access of unbound variable

Warning: D3D shader compilation failed with default flags. (ps_5_0)
 Retrying with skip validation
C:\fakepath(29,56-76): internal error: invalid access of unbound variable

Warning: D3D shader compilation failed with skip validation flags. (ps_5_0)
 Retrying with skip optimization
C:\fakepath(29,56-76): internal error: invalid access of unbound variable

Warning: D3D shader compilation failed with skip optimization flags. (ps_5_0)
Failed to create D3D shaders.

*/