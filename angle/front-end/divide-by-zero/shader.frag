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

void main(void)
{
    for(
        int i = 0;
        i < 600;
        i ++
    )
        {
            if(injectionSwitch.x > 1.0)
                {
                    int x = 1 / i;
                }
        }
}

/*

With Google Chrome Version 57.0.2987.110 (64-bit)

Failed to link shader program.
C:\fakepath(29,32-58): error X4010: Unsigned integer divide by zero
C:\fakepath(29,32-58): error X4010: Unsigned integer divide by zero
C:\fakepath(29,32-58): warning X3556: integer divides may be much slower, try using uints if possible.

Warning: D3D shader compilation failed with default flags. (ps_5_0)
 Retrying with skip validation
C:\fakepath(29,32-58): error X4010: Unsigned integer divide by zero
C:\fakepath(29,32-58): error X4010: Unsigned integer divide by zero
C:\fakepath(29,32-58): warning X3556: integer divides may be much slower, try using uints if possible.

Warning: D3D shader compilation failed with skip validation flags. (ps_5_0)
 Retrying with skip optimization
C:\fakepath(29,32-58): error X4010: Unsigned integer divide by zero
C:\fakepath(29,32-58): warning X3556: integer divides may be much slower, try using uints if possible.

Warning: D3D shader compilation failed with skip optimization flags. (ps_5_0)
Failed to create D3D shaders.

*/
