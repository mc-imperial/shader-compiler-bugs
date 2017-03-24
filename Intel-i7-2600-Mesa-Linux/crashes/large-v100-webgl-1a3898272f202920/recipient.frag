#version 100

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 resolution;

uniform float time;

float slow(float n)
{
    return (1.0 - (pow(1.0 - (abs(n)), 1.1))) * (sign(n));
}
vec2 polar_cart(vec2 p)
{
    return (vec2(cos((p).x), sin((p).x))) * ((p).y);
}
vec2 calc_motion(vec2 o)
{
    return polar_cart(vec2((slow(sin(((time / 3.0) - ((length(o)) / 10.0)) * 2.0))) * (((pow(time, 1.2)) / 3.14159) + 0.2), 0.5 - (1.0 / ((time) + 1e-05))));
}
float fluidbox(vec2 p)
{
    return min(min(min(min(min(min(min(min((length(((p) + (vec2(- 0.05, - 0.05))) + (calc_motion(vec2(- 1.0, - 1.0))))) - 0.05, (length(((p) + (vec2(- 0.05, - 0.025))) + (calc_motion(vec2(- 1.0, - 0.5))))) - 0.05), (length(((p) + (vec2(- 0.05, 0.0))) + (calc_motion(vec2(- 1.0, 0.0))))) - 0.05), (length(((p) + (vec2(- 0.05, 0.025))) + (calc_motion(vec2(- 1.0, 0.5))))) - 0.05), (length(((p) + (vec2(- 0.05, 0.05))) + (calc_motion(vec2(- 1.0, 1.0))))) - 0.05), min(min(min(min((length(((p) + (vec2(- 0.025, - 0.05))) + (calc_motion(vec2(- 0.5, - 1.0))))) - 0.05, (length(((p) + (vec2(- 0.025, - 0.025))) + (calc_motion(vec2(- 0.5, - 0.5))))) - 0.05), (length(((p) + (vec2(- 0.025, 0.0))) + (calc_motion(vec2(- 0.5, 0.0))))) - 0.05), (length(((p) + (vec2(- 0.025, 0.025))) + (calc_motion(vec2(- 0.5, 0.5))))) - 0.05), (length(((p) + (vec2(- 0.025, 0.05))) + (calc_motion(vec2(- 0.5, 1.0))))) - 0.05)), min(min(min(min((length(((p) + (vec2(0.0, - 0.05))) + (calc_motion(vec2(0.0, - 1.0))))) - 0.05, (length(((p) + (vec2(0.0, - 0.025))) + (calc_motion(vec2(0.0, - 0.5))))) - 0.05), (length(((p) + (vec2(0.0, 0.0))) + (calc_motion(vec2(0.0, 0.0))))) - 0.05), (length(((p) + (vec2(0.0, 0.025))) + (calc_motion(vec2(0.0, 0.5))))) - 0.05), (length(((p) + (vec2(0.0, 0.05))) + (calc_motion(vec2(0.0, 1.0))))) - 0.05)), min(min(min(min((length(((p) + (vec2(0.025, - 0.05))) + (calc_motion(vec2(0.5, - 1.0))))) - 0.05, (length(((p) + (vec2(0.025, - 0.025))) + (calc_motion(vec2(0.5, - 0.5))))) - 0.05), (length(((p) + (vec2(0.025, 0.0))) + (calc_motion(vec2(0.5, 0.0))))) - 0.05), (length(((p) + (vec2(0.025, 0.025))) + (calc_motion(vec2(0.5, 0.5))))) - 0.05), (length(((p) + (vec2(0.025, 0.05))) + (calc_motion(vec2(0.5, 1.0))))) - 0.05)), min(min(min(min((length(((p) + (vec2(0.05, - 0.05))) + (calc_motion(vec2(1.0, - 1.0))))) - 0.05, (length(((p) + (vec2(0.05, - 0.025))) + (calc_motion(vec2(1.0, - 0.5))))) - 0.05), (length(((p) + (vec2(0.05, 0.0))) + (calc_motion(vec2(1.0, 0.0))))) - 0.05), (length(((p) + (vec2(0.05, 0.025))) + (calc_motion(vec2(1.0, 0.5))))) - 0.05), (length(((p) + (vec2(0.05, 0.05))) + (calc_motion(vec2(1.0, 1.0))))) - 0.05));
}
vec2 rotate_2d(vec2 c, float a)
{
    float ca = cos(a);
    float sa = sin(a);
    return vec2((((c).x) * (ca)) - (((c).y) * (sa)), (((c).y) * (ca)) + (((c).x) * (sa)));
}
vec4 distance_field(vec2 p)
{
    return vec4(min(min(fluidbox((rotate_2d(p, (0.0 + (((pow(time, 1.3)) * 45.0) * (sin((time) / 10.0)))) * 0.0174532777778)) - (vec2(0.5, 0.0))), fluidbox((rotate_2d(p, (120.0 + (((pow(time, 1.3)) * 45.0) * (sin((time) / 10.0)))) * 0.0174532777778)) - (vec2(0.5, 0.0)))), fluidbox((rotate_2d(p, (240.0 + (((pow(time, 1.3)) * 45.0) * (sin((time) / 10.0)))) * 0.0174532777778)) - (vec2(0.5, 0.0)))), 0.0, 0.0, 0.0);
}
void main()
{
    vec2 p = (((((gl_FragCoord).xy) / ((resolution).xy)) * 2.0) - 1.0) * (vec2(((resolution).x) / ((resolution).y), 1.0));
    vec2 h = vec2(1e-05, 0.0);
    vec3 mat = (distance_field(p)).yzw;
    float val = clamp(abs((abs((((distance_field(p)).x) / (abs(length((vec2(((distance_field((p) + (h))).x) - ((distance_field((p) - (h))).x), ((distance_field((p) + ((h).yx))).x) - ((distance_field((p) - ((h).yx))).x))) / (2.0 * ((h).x)))))) * 85.0)) - (clamp((- (((distance_field(p)).x) / (abs(length((vec2(((distance_field((p) + (h))).x) - ((distance_field((p) - (h))).x), ((distance_field((p) + ((h).yx))).x) - ((distance_field((p) - ((h).yx))).x))) / (2.0 * ((h).x))))))) * 100.0, 0.0, 1.0))), 0.0, 1.0);
    gl_FragColor = vec4(mix((val) * (mat), vec3(1.0, 1.0, 1.0), 1. - val), 1.0);
}
