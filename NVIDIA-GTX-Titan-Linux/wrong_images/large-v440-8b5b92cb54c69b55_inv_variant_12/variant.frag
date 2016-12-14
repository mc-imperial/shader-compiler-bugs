#version 440

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

uniform float time;

uniform vec2 resolution;

const float EPS = 0.01;

const int MAXI = 100;

float hash(float x)
{
    return fract(sin(x) * 43758.5453);
}
float noise(vec2 uv)
{
    vec3 x = vec3(uv.xy, 0.0);
    vec3 p = floor(x);
    vec3 f = fract(x);
    f = f * f * (3.0 - 2.0 * f);
    float offset = 57.0;
    float n = dot(p, vec3(1.0, offset, offset * 2.0));
    return mix(mix(mix(hash(n + 0.0), hash(n + 1.0), f.x), mix(hash(n + offset), hash(n + offset + 1.0), f.x), f.y), mix(mix(hash(n + offset * 2.0), hash(n + offset * 2.0 + 1.0), f.x), mix(hash(n + offset * 3.0), hash(n + offset * 3.0 + 1.0), f.x), f.y), f.z);
}
float perlinNoise(vec2 uv)
{
    float n = noise(uv * 1.0) * 128.0 + noise(uv * 2.0) * 64.0 + noise(uv * 4.0) * 32.0 + noise(uv * 8.0) * 16.0 + noise(uv * 16.0) * 8.0 + noise(uv * 32.0) * 4.0 + noise(uv * 64.0) * 2.0 + noise(uv * 128.0) * 1.0;
    float noiseVal = n / (1.0 + 2.0 + 4.0 + 8.0 + 16.0 + 32.0 + 64.0 + 128.0);
    noiseVal = abs(noiseVal * 2.0 - 1.0);
    return noiseVal;
}
struct HitObject {
    float distance;
    vec3 color;
    vec3 hitPos;
};
mat4 Transpose(mat4 m)
{
    mat4 t = mat4(vec4(m[0][0], m[1][0], m[2][0], m[3][0]), vec4(m[0][1], m[1][1], m[2][1], m[3][1]), vec4(m[0][2], m[1][2], m[2][2], m[3][2]), vec4(m[0][3], m[1][3], m[2][3], m[3][3]));
    return t;
}
HitObject Torus(vec3 ray, vec2 size, vec3 color, mat4 transform)
{
    vec3 rayPrime = vec3(Transpose(transform) * vec4(ray, 1));
    vec2 q = vec2(length(rayPrime.xz) - size.x, rayPrime.y);
    float d = length(q) - size.y;
    HitObject hitObject;
    hitObject.distance = d;
    hitObject.color = color;
    return hitObject;
}
HitObject RoundedCube(vec3 ray, vec3 size, float radius, vec3 color, mat4 transform)
{
    vec3 rayPrime = vec3(Transpose(transform) * vec4(ray, 1));
    float d = length(max(abs(rayPrime) - size, 0.0)) - radius;
    HitObject hitObject;
    hitObject.distance = d;
    hitObject.color = color;
    return hitObject;
}
HitObject Plane(vec3 ray, vec4 normal, vec3 color, mat4 transform)
{
    vec3 rayPrime = vec3(Transpose(transform) * vec4(ray, 1));
    normal.w += perlinNoise(rayPrime.xz * 0.5);
    float d = dot(rayPrime, normal.xyz) + normal.w;
    float x = mod(floor(rayPrime.x * 10.0) + floor(rayPrime.z * 10.0), 2.0);
    color *= x;
    color = mix(color, vec3(0.0), rayPrime.z / 5.0);
    HitObject hitObject;
    hitObject.distance = d;
    hitObject.color = color;
    return hitObject;
}
HitObject Scene(vec3 ray)
{
    float t = time;
    float c = cos(t);
    float s = sin(t);
    mat4 rotX = mat4(vec4(1, 0, 0, 0), vec4(0, c, - s, 0), vec4(0, s, c, 0), vec4(0, 0, 0, 1));
    mat4 rotY = mat4(vec4(c, 0, - s, 0), vec4(0, 1, 0, 0), vec4(s, 0, c, 0), vec4(0, 0, 0, 1));
    mat4 rotZ = mat4(vec4(c, s, 0, 0), vec4(- s, c, 0, 0), vec4(0, 0, 1, 0), vec4(0, 0, 0, 1));
    mat4 transform = rotY * rotZ;
    HitObject objA = RoundedCube(ray, vec3(0.5, 0.5, 0.5), 0.15, vec3(0.8, 0.3, 0.2), transform);
    HitObject objB = Torus(ray, vec2(0.8, 0.2), vec3(0.8, 0.8, 0.2), transform);
    float morphT = sin(time * 0.5) * 0.5 + 0.5;
    HitObject obj1;
    obj1.distance = mix(objA.distance, objB.distance, morphT);
    obj1.color = mix(objA.color, objB.color, morphT);
    transform = mat4(vec4(1, 0, 0, 0), vec4(0, 1, 0, - 0.0), vec4(0, 0, 1, 0), vec4(0, 0, 0, 1));
    if(((injectionSwitch.x > injectionSwitch.y)))
        {
            ray += vec3(1, 0, 0);
        }
    HitObject obj2 = Plane(ray, vec4(0.0, - 1.0, 0.0, 0.1), vec3(0.2, 0.4, 0.5), transform);
    return obj2;
}
float SceneDist(vec3 ray)
{
    return Scene(ray).distance;
}
vec3 GetNormal(vec3 pos)
{
    vec2 eps = vec2(0.0, EPS);
    return normalize(vec3(SceneDist(pos + eps.yxx) - SceneDist(pos - eps.yxx), SceneDist(pos + eps.xyx) - SceneDist(pos - eps.xyx), SceneDist(pos + eps.xxy) - SceneDist(pos - eps.xxy)));
}
float Shadow(vec3 hitPos, vec3 normal, vec3 lightPos)
{
    HitObject hitObject;
    vec3 rayDir = normalize(- vec3(lightPos - hitPos));
    hitPos = hitPos + (rayDir * 0.1);
    hitObject = Scene(hitPos);
    float dist = hitObject.distance;
    float total = dist;
    float shadowFactor = 1.0;
    for(
        int i = 0;
        i < MAXI;
        ++ i
    )
        {
            HitObject tempHitObject = Scene(hitPos + rayDir * total);
            dist = tempHitObject.distance;
            if(dist <= 0.01)
                {
                    return 0.00;
                }
            shadowFactor = min(shadowFactor, (8.0 * dist) / float(i));
            total += dist;
        }
    shadowFactor = clamp(shadowFactor, 0.00, 1.0);
    return shadowFactor;
}
vec3 Lighting(vec3 lightPos, vec3 hitPos, vec3 camPos, vec3 normal, vec3 diffuseColor)
{
    vec3 fromHitPosToLight = lightPos - hitPos;
    vec3 lightDir = normalize(fromHitPosToLight);
    vec3 viewDir = normalize(camPos - hitPos);
    vec3 lightAmbientColor = vec3(0.1);
    vec3 lightSpecularColor = vec3(1, 1, 1);
    float lightDiffuseIntensity = 1.0 - clamp(dot(normal, lightDir) * 0.5 + 0.5, 0.00, 1.0);
    vec3 halfDir = normalize(viewDir + lightDir);
    float lightSpecularIntensity = pow(clamp(dot(normal, reflect(lightDir, normal)), 0.0, 1.0), 80.0);
    lightSpecularIntensity *= pow(length(fromHitPosToLight), 0.1);
    float shadowFactor = Shadow(hitPos, normal, lightPos);
    return lightAmbientColor + ((lightDiffuseIntensity * diffuseColor) + (lightSpecularIntensity * lightSpecularColor)) * shadowFactor;
}
vec3 RenderScene(vec2 uv)
{
    vec3 color = vec3(0, 0, 0);
    vec3 lightPos = vec3(7.0, 30, 7.0);
    vec3 camPos = vec3(0.0, 0.0, - 3.0);
    vec3 camTarget = vec3(0.0, 0.0, 0.0);
    vec3 camUp = vec3(0, 1.0, 0);
    vec3 camFwd = normalize(camTarget - camPos);
    vec3 camRight = normalize(cross(camUp, camFwd));
    camUp = normalize(cross(camRight, camFwd));
    HitObject hitObject;
    hitObject = Scene(camPos);
    float dist = hitObject.distance;
    float total = dist;
    vec3 rayDir = vec3(normalize(camFwd + camRight * uv.x + camUp * uv.y));
    for(
        int i = 0;
        i < MAXI;
        ++ i
    )
        {
            HitObject tempHitObject = Scene(camPos + rayDir * total);
            dist = tempHitObject.distance;
            total += dist;
            if(dist <= EPS)
                {
                    hitObject = tempHitObject;
                    break;
                }
        }
    vec3 dest = camPos + rayDir * total;
    if(dist <= EPS)
        {
            vec3 hitPos = camPos + rayDir * total;
            vec3 normal = GetNormal(dest);
            vec3 diffuse = hitObject.color;
            color = Lighting(lightPos, hitPos, camPos, normal, diffuse);
        }
    else
        {
            color = vec3(0.0);
        }
    return color;
}
void main(void)
{
    vec2 uv = (gl_FragCoord.xy / resolution.xy) * 2.0 - 1.0;
    uv.x *= resolution.x / resolution.y;
    vec3 finalColor = RenderScene(uv);
    gl_FragColor = vec4(finalColor, 1.0);
}
