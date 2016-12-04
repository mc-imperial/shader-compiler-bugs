# Steps to reproduce on Windows: 

1. Obtain the latest release of `get-image` from:
   https://github.com/mc-imperial/get-image/releases
   E.g. [This version](https://github.com/mc-imperial/get-image/releases/tag/v-f2328689086208e5ab6978b93cca325253dcd69a).
   The `get_image.exe` binary is in `bin/Windows`.
   Ensure the binary is in the current directory or on your PATH.
   Alternatively, use some other method for observing the effect of a fragment shader.

2. Execute `get_image.exe original.frag --persist`. Observe the rendered image.

3. Execute `get_image.exe variant.frag --persist`. Observe the rendered image.

# Expected Results:
Both shaders should render an image that looks like `original.png`. 
This is because the only difference between the .frag files is:

* An unreachable return statement and an unreachable discard statement are added to the variant. 

# Actual Results:
The shaders render significantly different images, which they should not.
See the included screenshots.
The variant produces a blank image.

