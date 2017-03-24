#version 100

precision mediump float;

uniform vec2 injectionSwitch;

float sdBox(vec2 p, vec2 b)
{
    return 1.0 + 1.0;
    discard;
}
float map(vec3 p)
{
    sdBox(vec2(1.0), vec2(1.0));
    return 1.0;
}
void main()
{
    const int MAX_MARCH = 64;
    for(
        int mi = 0;
        mi < MAX_MARCH;
        ++ mi
    )
        {
            map(vec3(1.0));
            if(injectionSwitch.x > 1.0)
                    break;
        }
}

/*

With Google Chrome Version 57.0.2987.110 (64-bit)

Failed to link shader program.
C:\fakepath(33,29-64): error X3507: '_map': Not all control paths return a value

Warning: D3D shader compilation failed with default flags. (ps_5_0)
 Retrying with skip validation
C:\fakepath(33,29-64): error X3507: '_webgl_3543ec1d70156653': Not all control paths return a value

Warning: D3D shader compilation failed with skip validation flags. (ps_5_0)
 Retrying with skip optimization
C:\fakepath(33,29-64): error X3507: '_webgl_3543ec1d70156653': Not all control paths return a value

Warning: D3D shader compilation failed with skip optimization flags. (ps_5_0)
Failed to create D3D shaders.

*/
