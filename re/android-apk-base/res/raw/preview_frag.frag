precision highp float;

uniform sampler2D texture;
varying vec2 texCoord;

void main()
{
    vec4 color = texture2D(texture, texCoord);
    gl_FragColor = vec4(color.b, color.g, color.r, color.a);
}
