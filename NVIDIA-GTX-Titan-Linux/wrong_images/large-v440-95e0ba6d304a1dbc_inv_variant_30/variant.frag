#version 440

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

uniform float t;

uniform vec2 r;

struct Coord {
    vec3 nx;
    vec3 ny;
    vec3 nz;
};
struct Ray {
    vec3 origin;
    vec3 ndir;
};
Coord makeBasis(vec3 y, vec3 up)
{
    Coord coord;
    coord.ny = normalize(y);
    coord.nz = normalize(up - y * dot(up, y));
    coord.nx = cross(coord.ny, coord.nz);
    return coord;
}
struct Sphere {
    vec3 center;
    float radius;
};
struct Intersection {
    bool hit;
    float hit_distance;
};
Sphere SPHERE_OBJECTS[2];

Intersection testIntersection(in Sphere sphere, in Ray ray)
{
    vec3 H = ray.origin + ray.ndir * (ray.ndir , sphere.center - ray.origin);
    float ray_distance = distance(H, sphere.center);
    if(ray_distance > sphere.radius)
        {
            return Intersection(false, 0.0);
        }
    float L = sqrt(sphere.radius * sphere.radius - ray_distance * ray_distance);
    float OH = dot(ray.ndir, H - ray.origin);
    if(OH + L < 0.0)
        {
            return Intersection(false, 0.0);
        }
    else
        {
            if(OH - L > 0.0)
                {
                    return Intersection(true, OH - L);
                }
            else
                {
                    return Intersection(true, OH + L);
                }
        }
}
vec4 trace(Ray ray)
{
    Intersection isec = testIntersection(SPHERE_OBJECTS[((((injectionSwitch.x < injectionSwitch.y)) ? 0 : 1))], ray);
    if(isec.hit)
        {
            return vec4(0, 0, 0.4, 1);
        }
    return vec4(0, 0, 0, 1);
}
const float FILM_WIDTH = 1000.0;

const vec3 FILM_CENTER = vec3(0, 0, 0);

const vec3 VIEW_FROM = vec3(0, - 100, 0);

const vec3 UP_VECTOR = vec3(0, 0, 1);

void main(void)
{
    SPHERE_OBJECTS[0] = Sphere(vec3(0, 0, 0), 1.0);
    float time = t;
    vec2 resolution = r;
    vec2 position = gl_FragCoord.xy / resolution.xy;
    float dx_from_center = (position.x - 0.5) * (FILM_WIDTH / 2.0);
    float dz_from_center = (position.y - 0.5) * (FILM_WIDTH / 2.0);
    Coord camera_coord = makeBasis(FILM_CENTER - VIEW_FROM, UP_VECTOR);
    vec3 film_pos = FILM_CENTER + camera_coord.nx * dx_from_center + camera_coord.nz * dz_from_center;
    Ray start_ray = Ray(VIEW_FROM, normalize(film_pos - VIEW_FROM));
    gl_FragColor = trace(start_ray);
}
