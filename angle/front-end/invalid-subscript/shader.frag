precision mediump float;

uniform vec2 injectionSwitch;

uniform float time;

void main(void)
{
  clamp(vec3(1.0), reflect(time, 1.0), 1.0).z;
}

/*

With Google Chrome Version 57.0.2987.110 (64-bit)

Failed to link shader program.
C:\fakepath(26,1-72): warning X3206: 'clamp': implicit truncation of vector type
C:\fakepath(26,1-74): error X3018: invalid subscript 'z'

Warning: D3D shader compilation failed with default flags. (ps_5_0)
 Retrying with skip validation
C:\fakepath(26,1-72): warning X3206: 'clamp': implicit truncation of vector type
C:\fakepath(26,1-74): error X3018: invalid subscript 'z'

Warning: D3D shader compilation failed with skip validation flags. (ps_5_0)
 Retrying with skip optimization
C:\fakepath(26,1-72): warning X3206: 'clamp': implicit truncation of vector type
C:\fakepath(26,1-74): error X3018: invalid subscript 'z'

Warning: D3D shader compilation failed with skip optimization flags. (ps_5_0)
Failed to create D3D shaders.

*/