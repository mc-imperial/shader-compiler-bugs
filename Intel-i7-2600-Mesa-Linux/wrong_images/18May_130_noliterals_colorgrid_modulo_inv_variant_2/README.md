Steps to Reproduce:
-------------------------------

0. This is reproducable with Mesa version 17.1.3, on Intel intergated GPUs.

1. Obtain and build the latest release of get-image-glsl, a simple tool
   that creates a .png image from a fragment shader. We need the
   `get_image_glfw` executable.
   https://github.com/graphicsfuzz/get-image-glsl

2. From a terminal, execute (this must be done in the directory where
   both .frag and .json files are):

   `/path/to/get_image_glfw original.frag`

   This will create output.png, which should look like original.png

3. From a terminal, execute (same remark as above):

   `/path/to/get_image_glfw variant.frag`

   This will create output.png, which should look like variant.png

Expected Results:
-------------------------------

Both shaders should render an image that looks like original.png.  This
is because the only difference between the .frag files is a 'do-while'
loop that should execute only once:

```
$ diff -u original.frag variant.frag
--- original.frag	2017-06-28 11:04:21.278754777 +0100
+++ variant.frag	2017-06-28 11:23:16.925591708 +0100
@@ -42,10 +42,12 @@
                 {
                     s += _FLOAT_CONST[2];
                 }
+            do {
             if(float(i) >= limit)
                 {
                     return s;
                 }
+            } while(gl_FragCoord.x < 0.0);
         }
     return s;
 }
```

Actual Results:
-------------------------------
The shaders render completely different images, which they should not.

Mesa code coverage:
--------------------

Unzip the `coverage.html.zip` file to get a web page that present the
comparative coverage of Mesa source code between the execution of the
original and the variant shader.

Additional Information:
-------------------------------
Some info on the system where the bug was found:

CPU: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
GPU: "2nd Generation Core Processor Family Integrated Graphics Controller"
OS: Linux 4.8.0-56-generic #61~16.04.1-Ubuntu SMP
Mesa version: 17.1.3
