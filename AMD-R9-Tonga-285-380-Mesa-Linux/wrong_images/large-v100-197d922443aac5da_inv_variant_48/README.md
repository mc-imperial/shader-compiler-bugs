
Steps to Reproduce:
-------------------------------

0. Note: this bug is experienced on an AMD GPU (tested on Tonga, see
   below for more config details)

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
addition, in the variant shader, of two unreachable "return" and
"continue" statements. The value of "injectionSwitch" is set to { 0.0,
1.0 }, such that the condition tested here is always false.

Diff:
```
27a28,29
> uniform vec2 injectionSwitch;
>
33a36,39
>     if(injectionSwitch.x > injectionSwitch.y)
>         {
>             return vec2(1.0);
>         }
120a127
>     c = c;
202a210,213
>                     if(injectionSwitch.x > injectionSwitch.y)
>                         {
>                             continue;
>                         }
```

Actual Results:
-------------------------------
The shaders render different images, which they should not: the red
circle completely disappear in the variant image.

Additional Information:
-------------------------------
Some info on the system where the bug was found:

- CPU: AMD A10-7850K Radeon R7, 12 Compute Cores 4C+8G
- GPU: Advanced Micro Devices, Inc. [AMD/ATI] Tonga PRO [Radeon R9 285/380]
- Mesa: 17.1.0-devel (git-08df015)
- OS: Ubuntu 16.04, Linux 4.4.0-71-generic
