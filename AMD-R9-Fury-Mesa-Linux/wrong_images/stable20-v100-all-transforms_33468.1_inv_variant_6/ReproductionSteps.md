Steps to Reproduce:
-------------------------------

0. This bug seems to affect AMD GPU (tested on Tonga, see below for
   more config details)

1. Obtain and build the latest release of get-image, a simple tool that
   creates a .png image from a fragment shader
   https://github.com/mc-imperial/get-image

2. From a terminal, execute:

   /path/to/get_image/linux_out/install/bin/get_image original.frag

   This will create output.png, which should look like original.png

3. From a terminal, execute:

   /path/to/get_image/linux_out/install/bin/get_image variant.frag

   This will create output.png, which should look like variant.png

Expected Results:
-------------------------------

Both shaders should render an image that looks like original.png. This
is because the only difference between the shader source files is the
addition of an if-else whose if block is empty and else block contains
the original code. We control the condition value to make sure it is
always false at runtime.

Diff:
```
27a28,29
> uniform vec2 injectionSwitch;
>
117a120,124
>     if(injectionSwitch.x > injectionSwitch.y)
>         {
>         }
>     else
>         {
129a137
>         }
```

The injectionSwitch uniform is always set to { 0.0, 1.0 }. The else
block contains the original code, untouched.

Actual Results:
-------------------------------
The shaders render different images, which they should not: The shadow
in the lower part of the ball disappear in the variant.

Additional Information:
-------------------------------
Some info on the system where the bug was found:

- CPU: AMD A10-7850K Radeon R7, 12 Compute Cores 4C+8G
- GPU: Advanced Micro Devices, Inc. [AMD/ATI] Tonga PRO [Radeon R9 285/380]
- Mesa: 17.1.0-devel (git-08df015)
