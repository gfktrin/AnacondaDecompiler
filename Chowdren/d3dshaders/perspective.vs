float2 vec2(float2 x0)
{
    return float2(x0);
}
// Attributes
static float4 _in_pos = {0, 0, 0, 0};
static float2 _in_tex_coord1 = {0, 0};

static float4 gl_Position = float4(0, 0, 0, 0);

// Varyings
static  float2 _texture_coordinate = {0, 0};

// uniform float4 dx_ViewAdjust : register(c1);


;
;
;
void gl_main()
{
{
(gl_Position = _in_pos);
(_texture_coordinate = vec2(_in_tex_coord1));
}
}
;
struct VS_OUTPUT
{
    float2 _texture_coordinate : TEXCOORD0;
    float4 position : POSITION;
};

struct VS_INPUT
{
    float2 _in_tex_coord1 : TEXCOORD0;
    float4 _in_pos : POSITION;
};

VS_OUTPUT main(VS_INPUT in_data)
{
    _in_tex_coord1 = in_data._in_tex_coord1;
    _in_pos = in_data._in_pos;
    gl_main();
    VS_OUTPUT data;
    data._texture_coordinate = _texture_coordinate;
    data.position = gl_Position;
    return data;
}
