#version 100

// #define VARIANT

precision highp int;
precision highp float;

int bar()
{
    for(int i = 1; i <= 1; ++i)
        {
#ifdef VARIANT			
            if(false)
                continue;
#endif
            continue;
#ifdef VARIANT
            if(false)
                return 1;
#endif
            return -1;
        }
    return 1;
}
	
vec2 foo()
{
	if (bar() < 0)
		return vec2(0, 1);
	return vec2(1, 0);
}

void main(void)
{
    gl_FragColor = vec4(foo(), 0, 1);
}
