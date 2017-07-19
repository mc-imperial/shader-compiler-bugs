#version 440

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 injectionSwitch;

void main(void)
{
	gl_FragColor = vec4(1., 0., 0., 1.);
    if (injectionSwitch.x > injectionSwitch.y)
    {
        if (injectionSwitch.x > injectionSwitch.y)
            return;
        int a = 0;
    }
    if (injectionSwitch.x > injectionSwitch.y)
    	discard;
}
