Steps to Reproduce:
-------------------------------

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

Both shaders should render an image that looks like original.png.  This
is because the only difference between the .frag files is:

- a for loop of 1 iteration

- inside this loop, a "if" which condition is sure to be false at
  runtime (we control the value of injectionSwitch to ensure this)

Actual Results:
-------------------------------
The shaders render completely different images, which they should not.
Moreover, the variant.frag file rendering seems unstable, i.e. it does
not always render the same image, but it always renders an image
different from the expected one.

Additional Information:
-------------------------------
N/A
