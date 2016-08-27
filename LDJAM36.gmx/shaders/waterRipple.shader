uniform mat4 modelViewProjection;

attribute vec4 position;
attribute vec4 color;
attribute vec2 texCoord;

varying lowp vec4 vColor;
varying highp vec2 vTexCoord;

void main()
{
    gl_Position = modelViewProjection * position;
    vColor = color;
    vTexCoord = texCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~// Ripple fragment shader

uniform lowp sampler2D texture;
uniform highp float time;
uniform highp float freq;
uniform lowp vec2 centre;

varying lowp vec4 vColor;
varying highp vec2 vTexCoord;

void main()
{
    highp vec2 tc = vTexCoord.xy;
    highp vec2 p = 1.5 * (tc-centre);
    highp float len = length(p);
    highp vec2 uv = fract(tc + (p/len)*freq*max(0.3, 2.-len)*cos(len*24.0-time*4.0)*0.03); 

    gl_FragColor = texture2D(texture,uv) * vColor;
}
