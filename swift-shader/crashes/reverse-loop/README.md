Running this shader through get\_image from
[get-image-egl](https://github.com/graphicsfuzz/get-image-egl)
using the swiftshader version of the libraries causes an assertion
error if the libraries are compiled with assertions on.

The following is the error output for this when run with swiftshader
compiled from bf7a8145635e7dc6625596be127733ac7418cf21 and get\_image
compiled from 936f0d26452d3c52a0b8552be77cc6798f99bcd7

```
get_image: swiftshader/src/OpenGL/compiler/OutputASM.cpp:3628: static unsigned int glsl::OutputASM::loopCount(TIntermLoop*): Assertion `false' failed.
```
