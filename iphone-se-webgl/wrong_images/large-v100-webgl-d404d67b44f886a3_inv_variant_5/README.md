This is for Safari on the iPhone SE. Full platform details are in `client.json`.

# Steps to Reproduce:
1. Open the Safari browser
2. Navigate to http://htmlpreview.github.io/?https://github.com/mc-imperial/shader-compiler-bugs/blob/master/utils/webgl/webgl_viewer.html
3. Paste the contents of `recipient_reduced_final.frag` into the text box
4. Click "Execute"; the rendered image is the expected image for this shader, and should look like `recipient_reduced_final.png`
5. Paste the contents of `variant_5_reduced_final_manual.frag` into the text box
6. Click "Execute"; you should find that the rendered image is significantly different from the expected image rendered previously

# Expected Results:
Both shaders should render an image that looks like `recipient_reduced_final.png`.  This is because the only difference between the .frag files is:

* Wrapped an if statement in a 1-iteration loop.
* Inserted `* injectionSwitch.y`, where `injectionSwitch.y` is `1.0` at runtime.
* Added an empty if statement with a false condition.

# Actual Results:
The shaders render significantly different images, which they should not.
The "worm" is missing from the variant image.
Removing any one of the above additions causes the issue to disappear.

