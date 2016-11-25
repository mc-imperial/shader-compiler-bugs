# Steps to reproduce on Android:

1. Obtain the latest release of libgdx-get-image from:
   https://github.com/mc-imperial/libgdx-get-image/releases
   This tool renders `shader.frag` (stored in the root of external storage)
   to the screen. Copy the apk to the device (or download directly) and install it. 
   Alternatively, use some other method for observing the effect of a fragment shader.

2. Copy or download `recipient_reduced_final.frag` to the "external storage" of the device
   (where you have directories like `Downloads`, `Videos`, etc.)
   Name it `shader.frag`.
   Run the `libgdx-get-image` app.

3. Copy or download `variant_*.frag` to the "external storage" of the device.
   Name it `shader.frag`.
   Run the `libgdx-get-image` app.
   You may need to close the app from the task switcher before it loads
   the updated shader.
   Observe the difference in the rendered image.

# Expected Results:
Both shaders should render an image that looks like `recipient_reduced_final.png`. 
This is because the only difference between the .frag files is:

TODO

# Actual Results:
The shaders render significantly different images, which they should not.
See the included screenshots.

TODO

