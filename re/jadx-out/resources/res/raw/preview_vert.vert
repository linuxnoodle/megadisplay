attribute vec4 vertex;
varying vec2 texCoord;

void main()
{
    gl_Position.xy = vertex.xy;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    texCoord = vertex.zw;
}
