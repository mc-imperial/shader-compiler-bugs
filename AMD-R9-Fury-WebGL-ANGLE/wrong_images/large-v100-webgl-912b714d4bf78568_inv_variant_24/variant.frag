#version 100
//WebGL

#ifdef GL_ES
precision mediump float;
#endif

// END OF GENERATED HEADER

uniform vec2 resolution;

uniform bool debugCamera;

uniform vec3 cameraPos;

uniform vec3 cameraDir;

uniform int shadowType;

uniform float shadowIntensity;

uniform float shadowSharpness;

uniform float objY;

const float EPS = 0.0001;

const float OFFSET = EPS * 2000.0;

const vec3 lightDir = vec3(- 0.48666426339228763, 0.8111071056538127, - 0.3244428422615251);

vec3 cPos, cDir;

struct Intersect {
    bool isHit;
    vec3 position;
    float distance;
    vec3 normal;
    int material;
    vec3 color;
};
const int SPHERE_MATERIAL = 0;

const int FLOOR_MATERIAL = 1;

float sphereDist(vec3 p, float r)
{
    vec3 c = vec3(0.0, objY, 0.0);
    return length(p - c) - r;
}
float floorDist(vec3 p)
{
    return dot(p, vec3(0.0, 1.0, 0.0)) + 1.0;
}
float sceneDist(vec3 p)
{
    return min(sphereDist(p, 1.0), floorDist(p));
}
float checkeredPattern(vec3 p)
{
    float u = 1.0 - floor(mod(p.x, 2.0));
    float v = 1.0 - floor(mod(p.z, 2.0));
    if((u == 1.0 && v < 1.0) || (u < 1.0 && v == 1.0))
        {
            return 0.2;
        }
    else
        {
            return 1.0;
        }
}
Intersect minIntersect(Intersect a, Intersect b)
{
    if(a.distance < b.distance)
        {
            return a;
        }
    else
        {
            return b;
        }
}
Intersect sceneIntersect(vec3 p)
{
    Intersect a, b;
    a.distance = sphereDist(p, 1.0);
    a.material = SPHERE_MATERIAL;
    b.distance = floorDist(p);
    b.material = FLOOR_MATERIAL;
    return minIntersect(a, b);
}
vec3 getNormal(vec3 p)
{
    return normalize(vec3(sceneDist(p + vec3(EPS, 0.0, 0.0)) - sceneDist(p + vec3(- EPS, 0.0, 0.0)), sceneDist(p + vec3(0.0, EPS, 0.0)) - sceneDist(p + vec3(0.0, - EPS, 0.0)), sceneDist(p + vec3(0.0, 0.0, EPS)) - sceneDist(p + vec3(0.0, 0.0, - EPS))));
}
float getHardShadow(vec3 ro, vec3 rd)
{
    float dist;
    float depth = EPS;
    for(
        int i = 0;
        i < 30;
        i ++
    )
        {
            dist = sceneDist(ro + rd * depth);
            for(int i = 0; i < 1; i++)
		{
                    if(dist < EPS)
                        {
                            return shadowIntensity;
                        }
                }
            depth += dist;
        }
    return 1.0;
}
float getSoft1Shadow(vec3 ro, vec3 rd)
{
    float dist;
    float depth = EPS;
    float bright = 1.0;
    for(
        int i = 0;
        i < 30;
        i ++
    )
        {
            dist = sceneDist(ro + rd * depth);
            if(dist < EPS)
                {
                    return shadowIntensity;
                }
            bright = min(bright, shadowSharpness * dist);
            depth += dist;
        }
    return shadowIntensity + (1.0 - shadowIntensity) * bright;
}
float getSoft2Shadow(vec3 ro, vec3 rd)
{
    float dist;
    float depth = EPS;
    float bright = 1.0;
    for(
        int i = 0;
        i < 30;
        i ++
    )
        {
            dist = sceneDist(ro + rd * depth);
            if(dist < EPS)
                {
                    return shadowIntensity;
                }
            bright = min(bright, shadowSharpness * dist / depth);
            depth += dist;
        }
    return shadowIntensity + (1.0 - shadowIntensity) * bright;
}
float getShadow(vec3 ro, vec3 rd)
{
    if(shadowType == 0)
        {
            return getHardShadow(ro, rd);
        }
    else
        {
            if(shadowType == 1)
                {
                    return getSoft1Shadow(ro, rd);
                }
        }
    return getSoft2Shadow(ro, rd);
}
Intersect getRayColor(vec3 origin, vec3 ray)
{
    float dist;
    float depth = 0.0;
    vec3 p = origin;
    int count = 0;
    Intersect nearest;
    for(
        int i = 0;
        i < 128;
        i ++
    )
        {
            dist = sceneDist(p);
            depth += dist;
            p = origin + depth * ray;
            count = i;
            if(abs(dist) < EPS)
                {
                    break;
                }
        }
    if(abs(dist) < EPS)
        {
            nearest = sceneIntersect(p);
            nearest.position = p;
            nearest.normal = getNormal(p);
            float diffuse = clamp(dot(lightDir, nearest.normal), 0.1, 1.0);
            float specular = pow(clamp(dot(reflect(lightDir, nearest.normal), ray), 0.0, 1.0), 10.0);
            float shadow = getShadow(p + nearest.normal * OFFSET, lightDir);
            if(nearest.material == FLOOR_MATERIAL)
                {
                    nearest.color = vec3(0.9) * checkeredPattern(p) * diffuse * shadow;
                }
            else
                {
                    if(nearest.material == SPHERE_MATERIAL)
                        {
                            vec3 color = vec3(1.0, 0.2, 0.2);
                            nearest.color = color * diffuse * shadow + specular;
                        }
                }
            nearest.isHit = true;
        }
    else
        {
            nearest.color = vec3(0.2);
            nearest.isHit = false;
        }
    return nearest;
}
void main(void)
{
    vec2 p = (gl_FragCoord.xy * 2.0 - resolution) / min(resolution.x, resolution.y);
    if(debugCamera)
        {
            cPos = cameraPos;
            cDir = cameraDir;
        }
    else
        {
            cPos = vec3(0.0, 2.0, - 4.0);
            cDir = normalize(vec3(0.0, - 0.3, 1.0));
        }
    vec3 cSide = normalize(cross(cDir, vec3(0.0, 1.0, 0.0)));
    vec3 cUp = normalize(cross(cSide, cDir));
    float targetDepth = 1.3;
    vec3 ray = normalize(cSide * p.x + cUp * p.y + cDir * targetDepth);
    vec3 color = vec3(0.0);
    float alpha = 1.0;
    Intersect nearest;
    for(
        int i = 0;
        i < 2;
        i ++
    )
        {
            nearest = getRayColor(cPos, ray);
            color += alpha * nearest.color;
            alpha *= 0.4;
            ray = normalize(reflect(ray, nearest.normal));
            cPos = nearest.position + nearest.normal * OFFSET;
            if(! nearest.isHit || nearest.material != SPHERE_MATERIAL)
                {
                    break;
                }
        }
    gl_FragColor = vec4(color, 1.0);
}
