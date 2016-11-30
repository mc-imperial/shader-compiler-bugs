#version 440

void main()
{
    vec3 dir = vec3(1.0);
    vec4 A[5] = vec4[5]((vec4(1.0)), (vec4(1.0)), (vec4(1.0)), (vec4(1.0)), mod(vec4(1.0), vec4(3.7, 1.0, 8.1, 2.3)));
    int i = (floatBitsToInt(1.0) + clamp(ivec4(72114, 6043, 47109, 71450), ivec4(47148, 21410, 1, 79446), ivec4(1))[3]);
    vec2 p = mod(vec2(1.0) * A[i].y, 2.0) - 1.0;
    float r = length(p);
    vec4 col = vec4(0., 0., 0., 0.);
    if(r < 0.70) {
        col = vec4(1.0);
    }
    dir = mix(vec3(1.0), col.rgb, 1.0);
    for(int r = 0; 1 < 12; r ++) {
       dir += vec3(1.0);
    }
}
