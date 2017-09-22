Take the following GLSL shader.

reduced_final.frag:

```glsl
#version 450

precision highp float;

vec3 computePoint(mat2 rotationMatrix)
{
    vec3 result = vec3(1.0);
    for(
        int i = 35;
        i >= 0;
        i --
    )
        {
        }
    return result;
}
void main()
{
    vec3 point2;
    point2 = computePoint(mat2(1.0));
}

```

And execute the following:

```sh
glslangValidator -V reduced_final.frag -o 1.spv
spirv-opt --strip-debug --freeze-spec-const --eliminate-dead-const --fold-spec-const-op-composite --unify-const --flatten-decorations --inline-entry-points-exhaustive --convert-local-access-chains --eliminate-common-uniform --eliminate-local-single-block --eliminate-local-single-store --eliminate-local-multi-store --eliminate-insert-extract --eliminate-dead-code-aggressive --eliminate-dead-branches --merge-blocks 1.spv -o 2.spv
spirv-cross --output 3.frag 2.spv
```

The output shader, 3.frag, does not validate.

3.frag:

```glsl
#version 450

void main()
{
    _0 = 35;
    for (int _58 = _0; _58 >= 0; _58 = _58 - 1)
    {
    }
}
```

```sh
glslangValidator 3.frag
3.frag
Warning, version 450 is not yet complete; most version-specific features are present, but some are missing.
ERROR: 0:5: '_0' : undeclared identifier 
ERROR: 0:5: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.
```

The bug might actually be in spirv-opt (and spirv-cross just fails to reject the invalid SPIR-V shader). 



