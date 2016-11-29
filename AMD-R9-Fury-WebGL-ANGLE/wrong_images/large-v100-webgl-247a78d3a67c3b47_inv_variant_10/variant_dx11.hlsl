#### BEGIN COMPILER 0 INFO LOG ####

#### END COMPILER 0 INFO LOG ####


#### BEGIN COMPILER 0 OBJ CODE ####
float2 vec2(float x0, float x1)
{
    return float2(x0, x1);
}
float3 vec3(float x0, float x1, float x2)
{
    return float3(x0, x1, x2);
}
float3x3 mat3(float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7, float x8)
{
    return float3x3(x0, x1, x2, x3, x4, x5, x6, x7, x8);
}
float4 vec4(float3 x0, float x1)
{
    return float4(x0, x1);
}
// Uniforms

uniform float2 _resolution : register(c0);
uniform float _time : register(c1);
#define ANGLE_USES_DISCARD_REWRITING
#ifdef ANGLE_ENABLE_LOOP_FLATTEN
#define LOOP [loop]
#define FLATTEN [flatten]
#else
#define LOOP
#define FLATTEN
#endif
// Varyings

static float4 gl_Color[1] =
{
    float4(0, 0, 0, 0)
};
static float4 gl_FragCoord = float4(0, 0, 0, 0);

cbuffer DriverConstants : register(b1)
{
    float4 dx_ViewCoords : packoffset(c1);
    float3 dx_DepthFront : packoffset(c2);
    float2 dx_ViewScale : packoffset(c3);
};

#define GL_USES_FRAG_COLOR
#define GL_USES_FRAG_COORD
float3 webgl_mod_emu(float3 x, float y)
{
    return x - y * floor(x / y);
}



float webgl_mod_emu(float x, float y)
{
    return x - y * floor(x / y);
}



float3 webgl_mod_emu(float3 x, float3 y)
{
    return x - y * floor(x / y);
}



;
;
;
float _tglad_formula(in float3 _z0)
{
(_z0 = webgl_mod_emu(_z0, 2.0));
float _mr = {0.25};
float _mxr = {1.0};
float4 _scale = {-3.1199999, -3.1199999, -3.1199999, 3.1199999};
float4 _p0 = {0.0, 1.59, -1.0, 0.0};
float4 _z = vec4(_z0, 1.0);
{ for(int _n = {0}; (_n < 3); (_n++))
{
(_z.xyz = ((clamp(_z.xyz, -0.94, 0.94) * 2.0) - _z.xyz));
(_z *= ((_scale / clamp(dot(_z.xyz, _z.xyz), _mr, _mxr)) * 1.0));
(_z += _p0);
}
}
;
float _dS = ((length(max((abs(_z.xyz) - float3(1.2, 49.0, 1.4)), 0.0)) - 0.059999999) / _z.w);
return _dS;
;
}
;
float _map(in float3 _p)
{
return _tglad_formula(_p);
;
}
;
float3 _guess_normal(in float3 _p)
{
return normalize(vec3((_map((_p + float3(0.001, 0.0, 0.0))) - _map((_p + float3(-0.001, 0.0, 0.0)))), (_map((_p + float3(0.0, 0.001, 0.0))) - _map((_p + float3(0.0, -0.001, 0.0)))), (_map((_p + float3(0.0, 0.0, 0.001))) - _map((_p + float3(0.0, 0.0, -0.001))))));
;
}
;
float2 _pattern(in float2 _p)
{
(_p = frac(_p));
float _r = {0.123};
float _v = {0.0};
float _g = {0.0};
(_r = frac((_r * 9184.9277)));
float _cp = {0};
float _d = {0};
(_d = _p.x);
(_g += pow(clamp((1.0 - abs(_d)), 0.0, 1.0), 1000.0));
(_d = _p.y);
(_g += pow(clamp((1.0 - abs(_d)), 0.0, 1.0), 1000.0));
(_d = (_p.x - 1.0));
(_g += pow(clamp((3.0 - abs(_d)), 0.0, 1.0), 1000.0));
(_d = (_p.y - 1.0));
(_g += pow(clamp((1.0 - abs(_d)), 0.0, 1.0), 10000.0));
{ for(int _i = {0}; (_i < 12); (_i++))
{
(_cp = (0.5 + ((_r - 0.5) * 0.89999998)));
(_d = (_p.x - _cp));
(_g += pow(clamp((1.0 - abs(_d)), 0.0, 1.0), 200.0));
if ((_d > 0.0))
{
(_r = frac((_r * 4829.0132)));
(_p.x = ((_p.x - _cp) / (1.0 - _cp)));
(_v += 1.0);
}
else
{
(_r = frac((_r * 129.528)));
(_p.x = (_p.x / _cp));
}
(_p = _p.yx);
}
}
;
(_v /= 12.0);
return vec2(_g, _v);
;
}
;
float2 _sphere_mapping(in float3 _p)
{
return vec2(((asin(_p.x) / 3.1415927) + 0.5), ((asin(_p.y) / 3.1415927) + 0.5));
;
}
;
float3x3 _axis_rotation_matrix33(in float3 _axis, in float _angle)
{
(_axis = normalize(_axis));
float _s = sin(_angle);
float _c = cos(_angle);
float _oc = (1.0 - _c);
return mat3((((_oc * _axis.x) * _axis.x) + _c), (((_oc * _axis.x) * _axis.y) - (_axis.z * _s)), (((_oc * _axis.z) * _axis.x) + (_axis.y * _s)), (((_oc * _axis.x) * _axis.y) + (_axis.z * _s)), (((_oc * _axis.y) * _axis.y) + _c), (((_oc * _axis.y) * _axis.z) - (_axis.x * _s)), (((_oc * _axis.z) * _axis.x) - (_axis.y * _s)), (((_oc * _axis.y) * _axis.z) + (_axis.x * _s)), (((_oc * _axis.z) * _axis.z) + _c));
;
}
;
void gl_main()
{
float2 _pos = (((gl_FragCoord.xy * 2.0) - _resolution.xy) / _resolution.y);
float3 _camPos = vec3((5.0 * cos((_time * 0.1))), (0.5 * sin((_time * 0.2))), (5.0 * sin((_time * 0.1))));
float3 _camDir = normalize(_camPos);
float3 _camUp = normalize(vec3(0.0, (1.0 + (cos((_time * 0.1)) * 0.75)), (sin((_time * 0.1)) * 0.75)));
(_camUp = mul(transpose(_axis_rotation_matrix33(cross(_camDir, _camUp), 1.5707964)), _camDir));
float3 _camSide = cross(_camDir, _camUp);
float _fovy = {60.0};
float3 _rayDir = normalize((((_camSide * (-_pos.x)) + (_camUp * (-_pos.y))) + ((_camDir * 1.0) / tan(((_fovy * 0.5) * 0.017453292)))));
float3 _ray = _camPos;
float _m = {0.0};
float _d = {0.0};
float _total_d = {0.0};
{ for(int _i = {0}; (_i < 100); (++_i))
{
(_d = _map(_ray));
(_total_d += _d);
(_ray += (_rayDir * _d));
(_m += 1.0);
if ((_d < 0.001))
{
break;
;
discard;
;
}
if ((_total_d > 100.0))
{
break;
;
}
}
}
;
float3 _normal = _guess_normal(_ray);
float _r = webgl_mod_emu((_time * 2.0), 20.0);
float _glow = max(((webgl_mod_emu((length(_ray) - (_time * 1.5)), 10.0) - 9.0) * 2.5), 0.0);
float3 _gp = abs(webgl_mod_emu(_ray, float3(0.40000001, 0.40000001, 0.40000001)));
float2 _p = _pattern((_sphere_mapping((normalize(_ray) * webgl_mod_emu(length(_ray), 1.0))) * 2.0));
if ((_p.x < 1.4))
{
(_glow = 0.0);
}
else
{
(_glow += 0.0);
}
(_glow += (max(((1.0 - abs(dot((-_camDir), _normal))) - 0.40000001), 0.0) * 0.5));
float _c = (_total_d * 0.0099999998);
float4 _result = vec4((vec3(_c, _c, _c) + ((float3(0.02, 0.02, 0.025) * _m) * 0.40000001)), 1.0);
(_result.xyz += (float3(0.5, 0.5, 0.75) * _glow));
(gl_Color[0] = _result);
}
;

#### END COMPILER 0 OBJ CODE ####


