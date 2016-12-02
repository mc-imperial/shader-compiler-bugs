This is for Safari on the iPhone SE. Full platform details are in `client.json`.

# Steps to Reproduce:
1. Open the Safari browser
2. Navigate to http://htmlpreview.github.io/?https://github.com/mc-imperial/shader-compiler-bugs/blob/master/utils/webgl/webgl_viewer.html
3. Paste the contents of `variant_2_reduced_final_manual.frag` into the text box
4. Click "Execute"; you should see the compile error, even though the shader is valid according to glslangValidator

# Expected Results:
The fragment shader should compile. It is valid according to glslangValidator.

# Actual Results:
Failed to compile fragment shader.
ERROR: 0:4: Expression of type 'vec2' - precision can not be inferred and no default precision available
ERROR: 0:5: Expression of type 'vec3' - precision can not be inferred and no default precision available
ERROR: 0:6: Expression of type 'vec4' - precision can not be inferred and no default precision available

