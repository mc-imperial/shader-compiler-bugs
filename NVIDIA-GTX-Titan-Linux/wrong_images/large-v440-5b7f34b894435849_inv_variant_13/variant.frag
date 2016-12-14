#version 440

#ifdef GL_ES
precision mediump float;
#endif

uniform float time;

uniform vec2 resolution;

vec3 hsbToRGB(float h, float s, float b)
{
    return b * (1.0 - s) + (b - b * (1.0 - ((true ? s : (mod(vec3(1.0), vec3(1.0)).x))))) * clamp(abs(abs(6.0 * (h - vec3(0, 1, 2) / 3.0)) - 3.0) - ((false ? (distance(vec3(1.0), vec3(1.0))) : 1.0)), 0.0, ((true ? 1.0 : (determinant(mat4(1.0))))));
}
vec3 colorFunc(float h)
{
    return hsbToRGB(fract(h), 1.0, (0.5 + (sin(time) * 0.5 + 0.5)));
}
vec3 drawShape(in vec2 pixel, in vec2 square, in vec3 setting)
{
    if((pixel.x - (setting.x) < square.x && pixel.x + (setting.x) > square.x && pixel.y - (setting.x) < square.y && pixel.y + (setting.x) > square.y * 1.0) && ! ((pixel.x - (setting.x - setting.y) < square.x && pixel.x + (setting.x - setting.y) > square.x && pixel.y - (setting.x - setting.y) < square.y && pixel.y + (setting.x - setting.y) > square.y * 1.0)))
        {
            return colorFunc(setting.z);
        }
    return vec3(0.0);
}
void main(void)
{
    float angle = sin(time) * 1.8;
    mat2 rotation = mat2(cos(angle), - sin(angle), sin(angle), cos(angle));
    vec2 aspect = resolution.xy / min(resolution.x, resolution.y);
    vec2 position = (gl_FragCoord.xy / resolution.xy) * aspect;
    vec2 center = vec2(0.5) * aspect;
    position *= rotation;
    center *= rotation;
    vec3 color = vec3(0.0);
    vec3 d = drawShape(position, center - vec2(0.0, 0.0), vec3(0.5, 0.08, float(sin(position.y + time * 0.5))));
    position *= - rotation;
    center *= - rotation;
    d += drawShape(position, center - vec2(0.0, 0.0), vec3(0.3, 0.08, float(sin(position.y + time * 0.8))));
    if(length(d) != 0.0)
        {
            color = d;
        }
    gl_FragColor = vec4(color, 1.0);
}
