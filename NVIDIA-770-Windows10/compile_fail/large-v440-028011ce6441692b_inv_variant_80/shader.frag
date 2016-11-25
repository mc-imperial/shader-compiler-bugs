#version 440

float foo(out vec3 p)
{
    for(int c = 0; c < 6; ++ c) {
        p = abs(p) + 
            vec3(1.0,
                 (false ? 1.0 : (false ? distance(1.0, 1.0) : 1.0)) + (true ? 0.1 : length(vec3(1.0))),
                 (true ? 1.0 : 1.0 - step(1.0, 1.0)) + 0.3
            );
    }
    return 1.0;
}
void main(void)
{
   vec3 v;
   foo(v);
}
