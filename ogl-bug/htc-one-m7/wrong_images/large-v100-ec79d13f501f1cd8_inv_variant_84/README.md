The full OS and plaform details are in `client_stripped.json`.

Note: Both shaders should render a "space scene" image.
See `actual.png` which is `recipient_reduced_final.frag` rendered using an Intel GPU.
On the HTC One M7, we just get a red image.
However, at the very least, both `recipient_reduced_final.frag`
and `variant_*.frag` should look the same, but they do not.
The `libgdx-get-image` tool mentioned below is also available for desktops/laptops
for comparison.

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
Both shaders should render a "space scene" image.
However, at the very least, both images should look the same.
This is because the only difference between the .frag files is:

* Inserted an addition of `+ injectionSwitch.x`. 
Note that `injectionSwitch.x` is always given the value 0. 
I.e. the addition should have no effect.

# Actual Results:
The shaders render significantly different images, which they should not.
See the included screenshots.
The recipient gives a red image. The variant gives a black image.

