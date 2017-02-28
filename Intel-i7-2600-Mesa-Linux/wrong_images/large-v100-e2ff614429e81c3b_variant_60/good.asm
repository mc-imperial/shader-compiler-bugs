Compiling fragment shader
Fragment shader compiled successfully
Compiling vertex shader
Vertex shader compiled successfully
Linking program
GLSL IR for native fragment shader 1:
(
(declare (location=0 shader_in ) vec4 gl_FragCoord)
(declare (location=2 shader_out ) vec4 gl_FragColor)
(declare (location=0 uniform ) float time)
(declare (location=1 uniform ) vec2 mouse)
(declare (location=2 uniform ) vec2 resolution)
( function main
  (signature void
    (parameters
    )
    (
      (declare () int r)
      (declare () vec3 backCol2)
      (declare () vec3 v)
      (declare () float s3)
      (declare () float s)
      (declare () float zoffset)
      (declare () float sampleShift)
      (declare () vec3 from)
      (declare () vec3 dir)
      (declare () float j)
      (declare (temporary ) float compiler_temp)
      (declare (temporary ) float compiler_temp@2)
      (declare () float speed)
      (declare (temporary ) float compiler_temp@3)
      (assign  (x) (var_ref compiler_temp@3)  (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) 
      (assign  (x) (var_ref speed)  (expression float * (constant float (0.005000)) (expression float cos (expression float + (expression float * (var_ref compiler_temp@3) (constant float (0.020000)) ) (constant float (0.785398)) ) ) ) ) 
      (declare (temporary ) float compiler_temp@4)
      (assign  (x) (var_ref compiler_temp@4)  (expression float rcp (expression float max (swiz x (var_ref resolution) )(swiz y (var_ref resolution) )) ) ) 
      (declare (temporary ) float compiler_temp@5)
      (assign  (x) (var_ref compiler_temp@5)  (expression float + (constant float (10.000000)) (expression float * (constant float (1.100000)) (expression float sin (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (1.500000)) ) ) ) ) ) 
      (assign  (x) (var_ref compiler_temp)  (expression float * (expression float * (expression float * (expression float + (expression float * (expression float * (constant float (2.000000)) (swiz x (var_ref gl_FragCoord) )) (expression float rcp (swiz x (var_ref resolution) )) ) (constant float (-1.000000)) ) (swiz x (var_ref resolution) )) (var_ref compiler_temp@4) ) (var_ref compiler_temp@5) ) ) 
      (assign  (x) (var_ref compiler_temp@2)  (expression float * (expression float * (expression float * (expression float + (expression float * (expression float * (constant float (2.000000)) (swiz y (var_ref gl_FragCoord) )) (expression float rcp (swiz y (var_ref resolution) )) ) (constant float (-1.000000)) ) (swiz y (var_ref resolution) )) (var_ref compiler_temp@4) ) (var_ref compiler_temp@5) ) ) 
      (assign  (x) (var_ref j)  (constant float (0.000000)) ) 
      (loop (
        (if (expression bool >= (var_ref j) (constant float (3.000000)) ) (
          break
        )
        ())

        (declare (temporary ) float compiler_temp@6)
        (declare (temporary ) float compiler_temp@7)
        (declare (temporary ) float compiler_temp@8)
        (assign  (x) (var_ref compiler_temp@8)  (expression float rcp (expression float + (var_ref j) (expression float neg (expression float * (expression float + (expression float * (var_ref compiler_temp@2) (var_ref compiler_temp@2) ) (expression float * (var_ref compiler_temp) (var_ref compiler_temp) ) ) (expression float sin (expression float + (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (0.100000)) ) (expression float * (constant float (0.500000)) (expression float sin (expression float * (expression float + (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (var_ref j) ) (constant float (0.050000)) ) ) ) ) ) ) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp@6)  (expression float * (var_ref compiler_temp) (var_ref compiler_temp@8) ) ) 
        (assign  (x) (var_ref compiler_temp@7)  (expression float * (var_ref compiler_temp@2) (var_ref compiler_temp@8) ) ) 
        (declare (temporary ) float compiler_temp@9)
        (assign  (x) (var_ref compiler_temp@9)  (expression float + (constant float (1.000000)) (expression float neg (expression float * (expression float * (expression float sqrt (expression float + (expression float * (var_ref compiler_temp@7) (var_ref compiler_temp@7) ) (expression float * (var_ref compiler_temp@6) (var_ref compiler_temp@6) ) ) ) (constant float (0.300000)) ) (expression float rcp (expression float + (var_ref j) (constant float (1.000000)) ) ) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp)  (expression float * (var_ref compiler_temp@6) (var_ref compiler_temp@9) ) ) 
        (assign  (x) (var_ref compiler_temp@2)  (expression float * (var_ref compiler_temp@7) (var_ref compiler_temp@9) ) ) 
        (declare (temporary ) float compiler_temp@10)
        (assign  (x) (var_ref compiler_temp@10)  (expression float sin (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (0.001000)) ) ) ) 
        (if (expression bool < (expression float * (var_ref compiler_temp@10) (expression float + (var_ref j) (constant float (1.000000)) ) ) (constant float (0.500000)) ) (
          break
        )
        ())

        (assign  (x) (var_ref j)  (expression float + (var_ref j) (constant float (0.500000)) ) ) 
      ))

      (declare (temporary ) float compiler_temp@11)
      (declare (temporary ) float compiler_temp@12)
      (declare (temporary ) float compiler_temp@13)
      (assign  (x) (var_ref compiler_temp@13)  (expression float rcp (expression float + (constant float (1.000000)) (expression float neg (expression float * (expression float + (expression float * (expression float + (expression float * (swiz y (var_ref gl_FragCoord) )(expression float rcp (swiz y (var_ref resolution) )) ) (expression float neg (swiz y (var_ref mouse) )) ) (expression float + (expression float * (swiz y (var_ref gl_FragCoord) )(expression float rcp (swiz y (var_ref resolution) )) ) (expression float neg (swiz y (var_ref mouse) )) ) ) (expression float * (expression float + (expression float * (swiz x (var_ref gl_FragCoord) )(expression float rcp (swiz x (var_ref resolution) )) ) (expression float neg (swiz x (var_ref mouse) )) ) (expression float + (expression float * (swiz x (var_ref gl_FragCoord) )(expression float rcp (swiz x (var_ref resolution) )) ) (expression float neg (swiz x (var_ref mouse) )) ) ) ) (constant float (0.300000)) ) ) ) ) ) 
      (assign  (x) (var_ref compiler_temp@11)  (expression float * (var_ref compiler_temp) (var_ref compiler_temp@13) ) ) 
      (assign  (x) (var_ref compiler_temp@12)  (expression float * (var_ref compiler_temp@2) (var_ref compiler_temp@13) ) ) 
      (assign  (x) (var_ref compiler_temp)  (var_ref compiler_temp@11) ) 
      (assign  (x) (var_ref compiler_temp@2)  (var_ref compiler_temp@12) ) 
      (declare (temporary ) float compiler_temp@14)
      (assign  (x) (var_ref compiler_temp@14)  (expression float + (constant float (0.900000)) (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (0.100000)) ) ) ) 
      (declare (temporary ) float compiler_temp@15)
      (declare (temporary ) float compiler_temp@16)
      (declare (temporary ) float compiler_temp@17)
      (declare (temporary ) float compiler_temp@18)
      (assign  (x) (var_ref compiler_temp@15)  (expression float cos (var_ref compiler_temp@14) ) ) 
      (assign  (x) (var_ref compiler_temp@16)  (expression float sin (var_ref compiler_temp@14) ) ) 
      (assign  (x) (var_ref compiler_temp@17)  (expression float neg (expression float sin (var_ref compiler_temp@14) ) ) ) 
      (assign  (x) (var_ref compiler_temp@18)  (expression float cos (var_ref compiler_temp@14) ) ) 
      (declare (temporary ) float compiler_temp@19)
      (declare (temporary ) float compiler_temp@20)
      (assign  (x) (var_ref compiler_temp@19)  (expression float * (var_ref compiler_temp@11) (constant float (0.900000)) ) ) 
      (assign  (x) (var_ref compiler_temp@20)  (expression float * (var_ref compiler_temp@12) (constant float (0.900000)) ) ) 
      (assign  (z) (var_ref dir)  (constant float (1.000000)) ) 
      (assign  (z) (var_ref from)  (constant float (0.000000)) ) 
      (assign  (x) (var_ref from)  (expression float neg (expression float * (constant float (5.000000)) (expression float + (swiz x (var_ref mouse) )(constant float (-0.500000)) ) ) ) ) 
      (assign  (y) (var_ref from)  (expression float neg (expression float * (constant float (5.000000)) (expression float + (swiz y (var_ref mouse) )(constant float (-0.500000)) ) ) ) ) 
      (assign  (x) (var_ref from)  (expression float + (swiz x (var_ref from) )(expression float + (expression float * (constant float (1.800000)) (expression float cos (expression float * (constant float (0.010000)) (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) ) ) (expression float * (constant float (0.001000)) (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) ) ) ) 
      (assign  (y) (var_ref from)  (expression float + (swiz y (var_ref from) )(expression float + (expression float * (constant float (1.800000)) (expression float sin (expression float * (constant float (0.010000)) (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) ) ) (expression float * (constant float (0.001000)) (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) ) ) ) 
      (assign  (z) (var_ref from)  (expression float * (constant float (0.003000)) (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) ) 
      (assign  (x) (var_ref dir)  (expression float + (expression float * (var_ref compiler_temp@20) (var_ref compiler_temp@16) ) (expression float * (var_ref compiler_temp@19) (var_ref compiler_temp@15) ) ) ) 
      (assign  (y) (var_ref dir)  (expression float + (expression float * (var_ref compiler_temp@20) (var_ref compiler_temp@18) ) (expression float * (var_ref compiler_temp@19) (var_ref compiler_temp@17) ) ) ) 
      (declare (temporary ) float compiler_temp@21)
      (declare (temporary ) vec2 compiler_temp@22)
      (assign  (xy) (var_ref compiler_temp@22)  (swiz xz (var_ref dir) )) 
      (assign  (x) (var_ref compiler_temp@21)  (expression float + (constant float (0.783327)) (expression float * (swiz x (var_ref dir) )(constant float (0.621610)) ) ) ) 
      (assign  (x) (var_ref dir)  (var_ref compiler_temp@21) ) 
      (assign  (z) (var_ref dir)  (expression float + (expression float * (swiz y (var_ref compiler_temp@22) )(constant float (0.621610)) ) (expression float * (swiz x (var_ref compiler_temp@22) )(constant float (-0.783327)) ) ) ) 
      (declare (temporary ) float compiler_temp@23)
      (declare (temporary ) float compiler_temp@24)
      (assign  (x) (var_ref compiler_temp@23)  (expression float + (expression float * (swiz z (var_ref dir) )(constant float (-0.564642)) ) (expression float * (swiz y (var_ref dir) )(constant float (0.825336)) ) ) ) 
      (assign  (x) (var_ref compiler_temp@24)  (expression float + (expression float * (swiz z (var_ref dir) )(constant float (0.825336)) ) (expression float * (swiz y (var_ref dir) )(constant float (0.564642)) ) ) ) 
      (assign  (y) (var_ref dir)  (var_ref compiler_temp@23) ) 
      (assign  (z) (var_ref dir)  (var_ref compiler_temp@24) ) 
      (declare (temporary ) vec2 compiler_temp@25)
      (assign  (xy) (var_ref compiler_temp@25)  (swiz xy (var_ref from) )) 
      (assign  (x) (var_ref from)  (expression float + (expression float * (swiz y (var_ref from) )(expression float neg (var_ref compiler_temp@16) ) ) (expression float * (swiz x (var_ref from) )(expression float neg (var_ref compiler_temp@15) ) ) ) ) 
      (assign  (y) (var_ref from)  (expression float + (expression float * (swiz y (var_ref compiler_temp@25) )(expression float neg (var_ref compiler_temp@18) ) ) (expression float * (swiz x (var_ref compiler_temp@25) )(expression float neg (var_ref compiler_temp@17) ) ) ) ) 
      (declare (temporary ) vec2 compiler_temp@26)
      (assign  (xy) (var_ref compiler_temp@26)  (swiz xz (var_ref from) )) 
      (assign  (x) (var_ref from)  (expression float + (expression float * (swiz z (var_ref from) )(constant float (0.783327)) ) (expression float * (swiz x (var_ref from) )(constant float (0.621610)) ) ) ) 
      (assign  (z) (var_ref from)  (expression float + (expression float * (swiz y (var_ref compiler_temp@26) )(constant float (0.621610)) ) (expression float * (swiz x (var_ref compiler_temp@26) )(constant float (-0.783327)) ) ) ) 
      (declare (temporary ) vec2 compiler_temp@27)
      (assign  (xy) (var_ref compiler_temp@27)  (swiz yz (var_ref from) )) 
      (assign  (y) (var_ref from)  (expression float + (expression float * (swiz z (var_ref from) )(constant float (-0.564642)) ) (expression float * (swiz y (var_ref from) )(constant float (0.825336)) ) ) ) 
      (assign  (z) (var_ref from)  (expression float + (expression float * (swiz y (var_ref compiler_temp@27) )(constant float (0.825336)) ) (expression float * (swiz x (var_ref compiler_temp@27) )(constant float (0.564642)) ) ) ) 
      (declare (temporary ) float compiler_temp@28)
      (assign  (x) (var_ref compiler_temp@28)  (expression float * (expression float + (var_ref compiler_temp@3) (constant float (-3311.000000)) ) (var_ref speed) ) ) 
      (declare (temporary ) float compiler_temp@29)
      (declare (temporary ) float compiler_temp@30)
      (declare (temporary ) float compiler_temp@31)
      (assign  (x) (var_ref compiler_temp@29)  (expression float + (swiz x (var_ref from) )(expression float * (constant float (0.783327)) (var_ref compiler_temp@28) ) ) ) 
      (assign  (x) (var_ref compiler_temp@30)  (expression float + (swiz y (var_ref from) )(expression float * (constant float (-0.350987)) (var_ref compiler_temp@28) ) ) ) 
      (assign  (x) (var_ref compiler_temp@31)  (expression float + (swiz z (var_ref from) )(expression float * (constant float (0.513037)) (var_ref compiler_temp@28) ) ) ) 
      (assign  (x) (var_ref from)  (var_ref compiler_temp@29) ) 
      (assign  (y) (var_ref from)  (var_ref compiler_temp@30) ) 
      (assign  (z) (var_ref from)  (var_ref compiler_temp@31) ) 
      (declare (temporary ) float compiler_temp@32)
      (assign  (x) (var_ref compiler_temp@32)  (expression float % (var_ref compiler_temp@28) (constant float (0.010900)) ) ) 
      (assign  (x) (var_ref zoffset)  (expression float neg (var_ref compiler_temp@32) ) ) 
      (assign  (x) (var_ref sampleShift)  (expression float * (var_ref compiler_temp@32) (constant float (91.743118)) ) ) 
      (assign  (x) (var_ref s)  (constant float (0.240000)) ) 
      (assign  (x) (var_ref s3)  (constant float (0.245450)) ) 
      (assign  (xyz) (var_ref v)  (constant vec3 (0.000000 0.000000 0.000000)) ) 
      (assign  (xyz) (var_ref backCol2)  (constant vec3 (0.000000 0.000000 0.000000)) ) 
      (assign  (x) (var_ref r)  (constant int (0)) ) 
      (loop (
        (declare () float fade)
        (declare () int i)
        (declare () float a)
        (declare () float pa)
        (declare (temporary ) float compiler_temp@33)
        (declare (temporary ) float compiler_temp@34)
        (declare (temporary ) float compiler_temp@35)
        (if (expression bool >= (var_ref r) (constant int (27)) ) (
          break
        )
        ())

        (declare (temporary ) float compiler_temp@36)
        (assign  (x) (var_ref compiler_temp@36)  (expression float + (var_ref s) (var_ref zoffset) ) ) 
        (assign  (x) (var_ref compiler_temp@33)  (expression float abs (expression float + (constant float (0.850000)) (expression float neg (expression float % (expression float + (var_ref compiler_temp@29) (expression float * (var_ref compiler_temp@36) (var_ref compiler_temp@21) ) ) (constant float (1.700000)) ) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp@34)  (expression float abs (expression float + (constant float (0.850000)) (expression float neg (expression float % (expression float + (var_ref compiler_temp@30) (expression float * (var_ref compiler_temp@36) (var_ref compiler_temp@23) ) ) (constant float (1.700000)) ) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp@35)  (expression float abs (expression float + (constant float (0.850000)) (expression float neg (expression float % (expression float + (var_ref compiler_temp@31) (expression float * (var_ref compiler_temp@36) (var_ref compiler_temp@24) ) ) (constant float (1.700000)) ) ) ) ) ) 
        (declare (temporary ) float compiler_temp@37)
        (declare (temporary ) float compiler_temp@38)
        (declare (temporary ) float compiler_temp@39)
        (declare (temporary ) float compiler_temp@40)
        (assign  (x) (var_ref compiler_temp@40)  (expression float + (var_ref s3) (var_ref zoffset) ) ) 
        (assign  (x) (var_ref compiler_temp@37)  (expression float abs (expression float + (constant float (0.850000)) (expression float neg (expression float % (expression float + (var_ref compiler_temp@29) (expression float * (var_ref compiler_temp@40) (var_ref compiler_temp@21) ) ) (constant float (1.700000)) ) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp@38)  (expression float abs (expression float + (constant float (0.850000)) (expression float neg (expression float % (expression float + (var_ref compiler_temp@30) (expression float * (var_ref compiler_temp@40) (var_ref compiler_temp@23) ) ) (constant float (1.700000)) ) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp@39)  (expression float abs (expression float + (constant float (0.850000)) (expression float neg (expression float % (expression float + (var_ref compiler_temp@31) (expression float * (var_ref compiler_temp@40) (var_ref compiler_temp@24) ) ) (constant float (1.700000)) ) ) ) ) ) 
        (declare () int i@41)
        (declare () float tw)
        (declare () float prev)
        (declare () float accum)
        (declare (temporary ) float compiler_temp@42)
        (assign  (x) (var_ref compiler_temp@42)  (expression float + (constant float (7.000000)) (expression float * (expression float log2 (expression float + (constant float (0.000001)) (expression float fract (expression float * (expression float sin (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) (constant float (4373.109863)) ) ) ) ) (constant float (0.020794)) ) ) ) 
        (assign  (x) (var_ref accum)  (constant float (0.000000)) ) 
        (assign  (x) (var_ref prev)  (constant float (0.000000)) ) 
        (assign  (x) (var_ref tw)  (constant float (0.000000)) ) 
        (assign  (x) (var_ref i@41)  (constant int (0)) ) 
        (loop (
          (if (expression bool >= (var_ref i@41) (constant int (6)) ) (
            break
          )
          ())

          (declare (temporary ) float compiler_temp@43)
          (assign  (x) (var_ref compiler_temp@43)  (expression float + (constant float (1.000000)) (expression float neg (expression float + (expression float * (var_ref compiler_temp@39) (var_ref compiler_temp@39) ) (expression float + (expression float * (var_ref compiler_temp@38) (var_ref compiler_temp@38) ) (expression float * (var_ref compiler_temp@37) (var_ref compiler_temp@37) ) ) ) ) ) ) 
          (declare (temporary ) float compiler_temp@44)
          (assign  (x) (var_ref compiler_temp@44)  (expression float rcp (var_ref compiler_temp@43) ) ) 
          (assign  (x) (var_ref compiler_temp@37)  (expression float + (expression float * (expression float abs (var_ref compiler_temp@37) ) (var_ref compiler_temp@44) ) (constant float (-0.500000)) ) ) 
          (assign  (x) (var_ref compiler_temp@38)  (expression float + (expression float * (expression float abs (var_ref compiler_temp@38) ) (var_ref compiler_temp@44) ) (expression float + (constant float (-0.800000)) (expression float * (constant float (0.100000)) (expression float sin (expression float + (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (0.700000)) ) (constant float (2.000000)) ) ) ) ) ) ) 
          (assign  (x) (var_ref compiler_temp@39)  (expression float + (expression float * (expression float abs (var_ref compiler_temp@39) ) (var_ref compiler_temp@44) ) (expression float + (constant float (-1.100000)) (expression float * (constant float (0.300000)) (expression float cos (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (0.300000)) ) ) ) ) ) ) 
          (declare (temporary ) float compiler_temp@45)
          (assign  (x) (var_ref compiler_temp@45)  (expression float exp2 (expression float * (constant float (0.206099)) (expression float neg (expression float i2f (var_ref i@41) ) ) ) ) ) 
          (assign  (x) (var_ref accum)  (expression float + (var_ref accum) (expression float * (var_ref compiler_temp@45) (expression float exp2 (expression float * (expression float * (expression float neg (var_ref compiler_temp@42) ) (expression float pow (expression float abs (expression float + (var_ref compiler_temp@43) (expression float neg (var_ref prev) ) ) ) (constant float (2.300000)) ) ) (constant float (1.442695)) ) ) ) ) ) 
          (assign  (x) (var_ref tw)  (expression float + (var_ref tw) (var_ref compiler_temp@45) ) ) 
          (assign  (x) (var_ref prev)  (var_ref compiler_temp@43) ) 
          (assign  (x) (var_ref i@41)  (expression int + (var_ref i@41) (constant int (1)) ) ) 
        ))

        (declare (temporary ) float compiler_temp@46)
        (assign  (x) (var_ref compiler_temp@46)  (expression float max (constant float (0.000000)) (expression float + (expression float * (expression float * (constant float (5.000000)) (var_ref accum) ) (expression float rcp (var_ref tw) ) ) (constant float (-0.700000)) ) ) ) 
        (assign  (x) (var_ref pa)  (constant float (0.000000)) ) 
        (assign  (x) (var_ref a)  (constant float (0.000000)) ) 
        (assign  (x) (var_ref i)  (constant int (0)) ) 
        (loop (
          (if (expression bool >= (var_ref i) (constant int (50)) ) (
            break
          )
          ())

          (declare (temporary ) float compiler_temp@47)
          (assign  (x) (var_ref compiler_temp@47)  (expression float rcp (expression float + (expression float * (var_ref compiler_temp@35) (var_ref compiler_temp@35) ) (expression float + (expression float * (var_ref compiler_temp@34) (var_ref compiler_temp@34) ) (expression float * (var_ref compiler_temp@33) (var_ref compiler_temp@33) ) ) ) ) ) 
          (declare (temporary ) float compiler_temp@48)
          (declare (temporary ) float compiler_temp@49)
          (declare (temporary ) float compiler_temp@50)
          (assign  (x) (var_ref compiler_temp@48)  (expression float + (expression float * (expression float abs (var_ref compiler_temp@33) ) (var_ref compiler_temp@47) ) (constant float (-0.790000)) ) ) 
          (assign  (x) (var_ref compiler_temp@49)  (expression float + (expression float * (expression float abs (var_ref compiler_temp@34) ) (var_ref compiler_temp@47) ) (constant float (-0.790000)) ) ) 
          (assign  (x) (var_ref compiler_temp@50)  (expression float + (expression float * (expression float abs (var_ref compiler_temp@35) ) (var_ref compiler_temp@47) ) (constant float (-0.790000)) ) ) 
          (assign  (x) (var_ref compiler_temp@33)  (var_ref compiler_temp@48) ) 
          (assign  (x) (var_ref compiler_temp@34)  (var_ref compiler_temp@49) ) 
          (assign  (x) (var_ref compiler_temp@35)  (var_ref compiler_temp@50) ) 
          (declare (temporary ) float compiler_temp@51)
          (assign  (x) (var_ref compiler_temp@51)  (expression float abs (expression float + (expression float sqrt (expression float + (expression float * (var_ref compiler_temp@50) (var_ref compiler_temp@50) ) (expression float + (expression float * (var_ref compiler_temp@49) (var_ref compiler_temp@49) ) (expression float * (var_ref compiler_temp@48) (var_ref compiler_temp@48) ) ) ) ) (expression float neg (var_ref pa) ) ) ) ) 
          (declare (temporary ) float compiler_temp@52)
          (if (expression bool > (var_ref i) (constant int (7)) ) (
            (assign  (x) (var_ref compiler_temp@52)  (expression float min (constant float (12.000000)) (var_ref compiler_temp@51) ) ) 
          )
          (
            (assign  (x) (var_ref compiler_temp@52)  (var_ref compiler_temp@51) ) 
          ))

          (assign  (x) (var_ref a)  (expression float + (var_ref a) (var_ref compiler_temp@52) ) ) 
          (assign  (x) (var_ref pa)  (expression float sqrt (expression float + (expression float * (var_ref compiler_temp@50) (var_ref compiler_temp@50) ) (expression float + (expression float * (var_ref compiler_temp@49) (var_ref compiler_temp@49) ) (expression float * (var_ref compiler_temp@48) (var_ref compiler_temp@48) ) ) ) ) ) 
          (assign  (x) (var_ref i)  (expression int + (var_ref i) (constant int (1)) ) ) 
        ))

        (assign  (x) (var_ref a)  (expression float * (var_ref a) (expression float * (var_ref a) (var_ref a) ) ) ) 
        (declare (temporary ) float compiler_temp@53)
        (assign  (x) (var_ref compiler_temp@53)  (expression float + (var_ref s) (var_ref zoffset) ) ) 
        (declare (temporary ) float compiler_temp@54)
        (assign  (x) (var_ref compiler_temp@54)  (expression float pow (constant float (0.760000)) (expression float max (constant float (0.000000)) (expression float + (expression float i2f (var_ref r) ) (expression float neg (var_ref sampleShift) ) ) ) ) ) 
        (assign  (x) (var_ref fade)  (var_ref compiler_temp@54) ) 
        (declare (temporary ) float compiler_temp@55)
        (declare (temporary ) float compiler_temp@56)
        (declare (temporary ) float compiler_temp@57)
        (assign  (x) (var_ref compiler_temp@55)  (expression float + (swiz x (var_ref v) )(var_ref compiler_temp@54) ) ) 
        (assign  (x) (var_ref compiler_temp@56)  (expression float + (swiz y (var_ref v) )(var_ref compiler_temp@54) ) ) 
        (assign  (x) (var_ref compiler_temp@57)  (expression float + (swiz z (var_ref v) )(var_ref compiler_temp@54) ) ) 
        (assign  (x) (var_ref v)  (var_ref compiler_temp@55) ) 
        (assign  (y) (var_ref v)  (var_ref compiler_temp@56) ) 
        (assign  (z) (var_ref v)  (var_ref compiler_temp@57) ) 
        (if (expression bool == (var_ref r) (constant int (0)) ) (
          (assign  (x) (var_ref fade)  (expression float * (var_ref compiler_temp@54) (expression float + (constant float (1.000000)) (expression float neg (var_ref sampleShift) ) ) ) ) 
        )
        ())

        (if (expression bool == (var_ref r) (constant int (26)) ) (
          (assign  (x) (var_ref fade)  (expression float * (var_ref fade) (var_ref sampleShift) ) ) 
        )
        ())

        (declare (temporary ) float compiler_temp@58)
        (assign  (x) (var_ref compiler_temp@58)  (expression float * (constant float (0.000120)) (var_ref fade) ) ) 
        (assign  (x) (var_ref v)  (expression float + (var_ref compiler_temp@55) (expression float * (expression float * (var_ref compiler_temp@53) (var_ref a) ) (var_ref compiler_temp@58) ) ) ) 
        (assign  (y) (var_ref v)  (expression float + (var_ref compiler_temp@56) (expression float * (expression float * (var_ref compiler_temp@53) (var_ref compiler_temp@53) ) (expression float * (var_ref a) (var_ref compiler_temp@58) ) ) ) ) 
        (assign  (z) (var_ref v)  (expression float + (var_ref compiler_temp@57) (expression float * (expression float * (expression float * (var_ref compiler_temp@53) (var_ref compiler_temp@53) ) (expression float * (var_ref compiler_temp@53) (var_ref compiler_temp@53) ) ) (expression float * (var_ref a) (var_ref compiler_temp@58) ) ) ) ) 
        (declare (temporary ) float compiler_temp@59)
        (declare (temporary ) float compiler_temp@60)
        (assign  (x) (var_ref compiler_temp@59)  (expression float + (swiz y (var_ref backCol2) )(expression float * (expression float * (constant float (1.400000)) (var_ref compiler_temp@46) ) (expression float * (var_ref compiler_temp@46) (var_ref fade) ) ) ) ) 
        (assign  (x) (var_ref compiler_temp@60)  (expression float + (swiz z (var_ref backCol2) )(expression float * (var_ref compiler_temp@46) (var_ref fade) ) ) ) 
        (assign  (x) (var_ref backCol2)  (expression float + (swiz x (var_ref backCol2) )(expression float * (expression float * (constant float (1.800000)) (var_ref compiler_temp@46) ) (expression float * (expression float * (var_ref compiler_temp@46) (var_ref compiler_temp@46) ) (var_ref fade) ) ) ) ) 
        (assign  (y) (var_ref backCol2)  (var_ref compiler_temp@59) ) 
        (assign  (z) (var_ref backCol2)  (var_ref compiler_temp@60) ) 
        (assign  (x) (var_ref s)  (expression float + (var_ref s) (constant float (0.010900)) ) ) 
        (assign  (x) (var_ref s3)  (expression float + (var_ref s3) (constant float (0.010900)) ) ) 
        (assign  (x) (var_ref r)  (expression int + (var_ref r) (constant int (1)) ) ) 
      ))

      (declare (temporary ) float compiler_temp@61)
      (declare (temporary ) float compiler_temp@62)
      (declare (temporary ) float compiler_temp@63)
      (declare (temporary ) vec3 compiler_temp@64)
      (assign  (xyz) (var_ref compiler_temp@64)  (swiz xxx (expression float sqrt (expression float + (expression float * (swiz z (var_ref v) )(swiz z (var_ref v) )) (expression float + (expression float * (swiz y (var_ref v) )(swiz y (var_ref v) )) (expression float * (swiz x (var_ref v) )(swiz x (var_ref v) )) ) ) ) )) 
      (assign  (x) (var_ref compiler_temp@61)  (expression float lrp (swiz x (var_ref compiler_temp@64) )(swiz x (var_ref v) )(constant float (0.980000)) ) ) 
      (assign  (x) (var_ref compiler_temp@62)  (expression float lrp (swiz y (var_ref compiler_temp@64) )(swiz y (var_ref v) )(constant float (0.980000)) ) ) 
      (assign  (x) (var_ref compiler_temp@63)  (expression float lrp (swiz z (var_ref compiler_temp@64) )(swiz z (var_ref v) )(constant float (0.980000)) ) ) 
      (assign  (x) (var_ref v)  (var_ref compiler_temp@61) ) 
      (assign  (y) (var_ref v)  (var_ref compiler_temp@62) ) 
      (assign  (z) (var_ref v)  (var_ref compiler_temp@63) ) 
      (declare (temporary ) float compiler_temp@65)
      (declare (temporary ) float compiler_temp@66)
      (declare (temporary ) float compiler_temp@67)
      (declare (temporary ) float compiler_temp@68)
      (assign  (x) (var_ref compiler_temp@68)  (expression float * (constant float (0.211000)) (expression float sin (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) ) ) ) 
      (assign  (x) (var_ref compiler_temp@65)  (expression float * (swiz x (var_ref backCol2) )(var_ref compiler_temp@68) ) ) 
      (assign  (x) (var_ref compiler_temp@66)  (expression float * (swiz y (var_ref backCol2) )(var_ref compiler_temp@68) ) ) 
      (assign  (x) (var_ref compiler_temp@67)  (expression float * (swiz z (var_ref backCol2) )(var_ref compiler_temp@68) ) ) 
      (assign  (y) (var_ref backCol2)  (var_ref compiler_temp@66) ) 
      (assign  (z) (var_ref backCol2)  (expression float * (var_ref compiler_temp@67) (constant float (1.800000)) ) ) 
      (assign  (x) (var_ref backCol2)  (expression float * (var_ref compiler_temp@65) (constant float (0.050000)) ) ) 
      (assign  (z) (var_ref backCol2)  (expression float * (constant float (0.500000)) (expression float lrp (var_ref compiler_temp@66) (swiz z (var_ref backCol2) )(constant float (0.800000)) ) ) ) 
      (assign  (y) (var_ref backCol2)  (constant float (0.000000)) ) 
      (declare (temporary ) vec2 compiler_temp@69)
      (declare (temporary ) float compiler_temp@70)
      (assign  (x) (var_ref compiler_temp@70)  (expression float * (constant float (0.500000)) (expression float + (expression float cos (expression float * (expression float abs (expression float + (expression float * (expression float sin (expression float * (expression float * (var_ref time) (constant float (0.000100)) ) (expression float abs (expression float sin (expression float + (swiz x (var_ref mouse) )(expression float * (var_ref time) (constant float (0.021000)) ) ) ) ) ) ) (var_ref time) ) (expression float * (constant float (121.000000)) (expression float sin (expression float * (var_ref time) (constant float (0.002000)) ) ) ) ) ) (constant float (0.010000)) ) ) (constant float (1.000000)) ) ) ) 
      (assign  (x) (var_ref compiler_temp@69)  (expression float * (swiz z (var_ref backCol2) )(var_ref compiler_temp@70) ) ) 
      (assign  (y) (var_ref compiler_temp@69)  (expression float * (swiz z (var_ref backCol2) )(expression float + (constant float (1.000000)) (expression float neg (var_ref compiler_temp@70) ) ) ) ) 
      (assign  (yz) (var_ref backCol2)  (swiz yx (var_ref compiler_temp@69) )) 
      (assign  (x) (var_ref gl_FragColor)  (expression float * (expression float sat (expression float min (expression float + (expression float * (var_ref compiler_temp@61) (constant float (0.010000)) ) (swiz x (var_ref backCol2) )) (constant float (0.500000)) ) ) (constant float (2.000000)) ) ) 
      (assign  (y) (var_ref gl_FragColor)  (expression float * (expression float sat (expression float min (expression float + (expression float * (var_ref compiler_temp@62) (constant float (0.010000)) ) (swiz y (var_ref compiler_temp@69) )) (constant float (0.500000)) ) ) (constant float (2.000000)) ) ) 
      (assign  (z) (var_ref gl_FragColor)  (expression float * (expression float sat (expression float min (expression float + (expression float * (var_ref compiler_temp@63) (constant float (0.010000)) ) (swiz x (var_ref compiler_temp@69) )) (constant float (0.500000)) ) ) (constant float (2.000000)) ) ) 
      (assign  (w) (var_ref gl_FragColor)  (constant float (1.000000)) ) 
    ))

)

)


NIR (SSA form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: GLSL1
inputs: 0
outputs: 0
uniforms: 36
shared: 0
decl_var uniform INTERP_MODE_NONE float time (0, 0, 0)
decl_var uniform INTERP_MODE_NONE vec2 mouse (1, 4, 0)
decl_var uniform INTERP_MODE_NONE vec2 resolution (2, 12, 0)
decl_var uniform INTERP_MODE_NONE vec4 gl_FbWposYTransform (0, 20, 0)
decl_var shader_in INTERP_MODE_SMOOTH vec4 gl_FragCoord (VARYING_SLOT_POS, 0, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	block block_0:
	/* preds: */
	vec2 32 ssa_0 = intrinsic load_barycentric_pixel () () (1) /* interp_mode=1 */
	vec1 32 ssa_1 = load_const (0x00000000 /* 0.000000 */)
	vec4 32 ssa_2 = intrinsic load_interpolated_input (ssa_0, ssa_1) () (0, 0) /* base=0 */ /* component=0 */
	vec1 32 ssa_3 = load_const (0x38d1b717 /* 0.000100 */)
	vec1 32 ssa_4 = load_const (0x3cac0831 /* 0.021000 */)
	vec1 32 ssa_5 = load_const (0x42f20000 /* 121.000000 */)
	vec1 32 ssa_6 = load_const (0x3b03126f /* 0.002000 */)
	vec1 32 ssa_7 = load_const (0x3ba3d70a /* 0.005000 */)
	vec1 32 ssa_8 = load_const (0x3ca3d70a /* 0.020000 */)
	vec1 32 ssa_9 = load_const (0x3f490fda /* 0.785398 */)
	vec1 32 ssa_10 = load_const (0x41200000 /* 10.000000 */)
	vec1 32 ssa_11 = load_const (0x3f8ccccd /* 1.100000 */)
	vec1 32 ssa_12 = load_const (0x3fc00000 /* 1.500000 */)
	vec1 32 ssa_13 = load_const (0x40000000 /* 2.000000 */)
	vec1 32 ssa_14 = load_const (0xbf800000 /* -1.000000 */)
	vec1 32 ssa_15 = load_const (0x3dcccccd /* 0.100000 */)
	vec1 32 ssa_16 = load_const (0x3f000000 /* 0.500000 */)
	vec1 32 ssa_17 = load_const (0x3d4ccccd /* 0.050000 */)
	vec1 32 ssa_18 = load_const (0x3f800000 /* 1.000000 */)
	vec1 32 ssa_19 = load_const (0x3e99999a /* 0.300000 */)
	vec1 32 ssa_20 = load_const (0x3a83126f /* 0.001000 */)
	vec1 32 ssa_21 = load_const (0x3f666666 /* 0.900000 */)
	vec1 32 ssa_22 = load_const (0x40a00000 /* 5.000000 */)
	vec1 32 ssa_23 = load_const (0xbf000000 /* -0.500000 */)
	vec1 32 ssa_24 = load_const (0x3fe66666 /* 1.800000 */)
	vec1 32 ssa_25 = load_const (0x3c23d70a /* 0.010000 */)
	vec1 32 ssa_26 = load_const (0x3f48881d /* 0.783327 */)
	vec1 32 ssa_27 = load_const (0x3f1f21d5 /* 0.621610 */)
	vec1 32 ssa_28 = load_const (0xbf48881d /* -0.783327 */)
	vec1 32 ssa_29 = load_const (0xbf108c69 /* -0.564642 */)
	vec1 32 ssa_30 = load_const (0x3f534932 /* 0.825336 */)
	vec1 32 ssa_31 = load_const (0x3f108c69 /* 0.564642 */)
	vec1 32 ssa_32 = load_const (0xc54ef000 /* -3311.000000 */)
	vec1 32 ssa_33 = load_const (0xbeb3b49f /* -0.350987 */)
	vec1 32 ssa_34 = load_const (0x3f035662 /* 0.513037 */)
	vec1 32 ssa_35 = load_const (0x3c3295ea /* 0.010900 */)
	vec1 32 ssa_36 = load_const (0x42b77c7a /* 91.743118 */)
	vec1 32 ssa_37 = load_const (0x3e75c28f /* 0.240000 */)
	vec1 32 ssa_38 = load_const (0x3e7b573e /* 0.245450 */)
	vec1 32 ssa_39 = load_const (0x0000001b /* 0.000000 */)
	vec1 32 ssa_40 = load_const (0x3f59999a /* 0.850000 */)
	vec1 32 ssa_41 = load_const (0x3fd9999a /* 1.700000 */)
	vec1 32 ssa_42 = load_const (0x40e00000 /* 7.000000 */)
	vec1 32 ssa_43 = load_const (0x358637bd /* 0.000001 */)
	vec1 32 ssa_44 = load_const (0x4588a8e1 /* 4373.109863 */)
	vec1 32 ssa_45 = load_const (0x3caa590d /* 0.020794 */)
	vec1 32 ssa_46 = load_const (0xbf4ccccd /* -0.800000 */)
	vec1 32 ssa_47 = load_const (0x3f333333 /* 0.700000 */)
	vec1 32 ssa_48 = load_const (0xbf8ccccd /* -1.100000 */)
	vec1 32 ssa_49 = load_const (0x40133333 /* 2.300000 */)
	vec1 32 ssa_50 = load_const (0x3fb8aa3b /* 1.442695 */)
	vec1 32 ssa_51 = load_const (0x00000001 /* 0.000000 */)
	vec1 32 ssa_52 = load_const (0xbf333333 /* -0.700000 */)
	vec1 32 ssa_53 = load_const (0x00000032 /* 0.000000 */)
	vec1 32 ssa_54 = load_const (0xbf4a3d71 /* -0.790000 */)
	vec1 32 ssa_55 = load_const (0x00000007 /* 0.000000 */)
	vec1 32 ssa_56 = load_const (0x41400000 /* 12.000000 */)
	vec1 32 ssa_57 = load_const (0x3f428f5c /* 0.760000 */)
	vec1 32 ssa_58 = load_const (0x0000001a /* 0.000000 */)
	vec1 32 ssa_59 = load_const (0x38fba882 /* 0.000120 */)
	vec1 32 ssa_60 = load_const (0x3fb33333 /* 1.400000 */)
	vec1 32 ssa_61 = load_const (0x3f7ae148 /* 0.980000 */)
	vec1 32 ssa_62 = load_const (0x3e581062 /* 0.211000 */)
	vec1 32 ssa_63 = load_const (0x3f4ccccd /* 0.800000 */)
	vec1 32 ssa_64 = intrinsic load_uniform (ssa_1) () (0, 4) /* base=0 */ /* range=4 */	/* time */
	vec1 32 ssa_65 = fmul ssa_64, ssa_3
	vec2 32 ssa_66 = intrinsic load_uniform (ssa_1) () (4, 8) /* base=4 */ /* range=8 */	/* mouse */
	vec1 32 ssa_67 = ffma ssa_64, ssa_4, ssa_66.x
	vec1 32 ssa_68 = fsin ssa_67
	vec1 32 ssa_69 = fmul ssa_65, abs(ssa_68)
	vec1 32 ssa_70 = fsin ssa_69
	vec1 32 ssa_71 = fmul ssa_64, ssa_6
	vec1 32 ssa_72 = fsin ssa_71
	vec1 32 ssa_73 = fmul ssa_5, ssa_72
	vec1 32 ssa_74 = ffma ssa_70, ssa_64, ssa_73
	vec1 32 ssa_75 = fmul abs(ssa_74), ssa_8
	vec1 32 ssa_76 = fadd ssa_75, ssa_9
	vec1 32 ssa_77 = fcos ssa_76
	vec1 32 ssa_78 = fmul ssa_7, ssa_77
	vec2 32 ssa_79 = intrinsic load_uniform (ssa_1) () (12, 8) /* base=12 */ /* range=8 */	/* resolution */
	vec1 32 ssa_80 = fmax ssa_79.x, ssa_79.y
	vec1 32 ssa_81 = frcp ssa_80
	vec1 32 ssa_82 = fmul abs(ssa_74), ssa_12
	vec1 32 ssa_83 = fsin ssa_82
	vec1 32 ssa_84 = fmul ssa_11, ssa_83
	vec1 32 ssa_85 = fadd ssa_10, ssa_84
	vec4 32 ssa_86 = intrinsic load_uniform (ssa_1) () (20, 16) /* base=20 */ /* range=16 */	/* gl_FbWposYTransform */
	vec4 32 ssa_87 = load_const (0x3f000000 /* 0.500000 */, 0x3f000000 /* 0.500000 */, 0x00000000 /* 0.000000 */, 0x00000000 /* 0.000000 */)
	vec1 32 ssa_88 = fadd ssa_2.x, ssa_87.x
	vec1 32 ssa_89 = fadd ssa_2.y, ssa_87.y
	vec1 32 ssa_90 = ffma ssa_89, ssa_86.x, ssa_86.y
	vec1 32 ssa_91 = fmul ssa_13, ssa_88
	vec1 32 ssa_92 = frcp ssa_79.x
	vec1 32 ssa_93 = ffma ssa_91, ssa_92, ssa_14
	vec1 32 ssa_94 = fmul ssa_93, ssa_79.x
	vec1 32 ssa_95 = fmul ssa_94, ssa_81
	vec1 32 ssa_96 = fmul ssa_95, ssa_85
	vec1 32 ssa_97 = fmul ssa_13, ssa_90
	vec1 32 ssa_98 = frcp ssa_79.y
	vec1 32 ssa_99 = ffma ssa_97, ssa_98, ssa_14
	vec1 32 ssa_100 = fmul ssa_99, ssa_79.y
	vec1 32 ssa_101 = fmul ssa_100, ssa_81
	vec1 32 ssa_102 = fmul ssa_101, ssa_85
	vec1 32 ssa_103 = fmul ssa_96, ssa_96
	vec1 32 ssa_104 = ffma ssa_102, ssa_102, ssa_103
	vec1 32 ssa_105 = fmul abs(ssa_74), ssa_17
	vec1 32 ssa_106 = fsin ssa_105
	vec1 32 ssa_107 = fmul ssa_16, ssa_106
	vec1 32 ssa_108 = ffma abs(ssa_74), ssa_15, ssa_107
	vec1 32 ssa_109 = fsin ssa_108
	vec1 32 ssa_110 = fmul ssa_104, ssa_109
	vec1 32 ssa_111 = frcp -ssa_110
	vec1 32 ssa_112 = fmul ssa_96, ssa_111
	vec1 32 ssa_113 = fmul ssa_102, ssa_111
	vec1 32 ssa_114 = fmul ssa_112, ssa_112
	vec1 32 ssa_115 = ffma ssa_113, ssa_113, ssa_114
	vec1 32 ssa_116 = fsqrt ssa_115
	vec1 32 ssa_117 = ffma -ssa_116, ssa_19, ssa_18
	vec1 32 ssa_118 = fmul ssa_112, ssa_117
	vec1 32 ssa_119 = fmul ssa_113, ssa_117
	vec1 32 ssa_120 = fmul abs(ssa_74), ssa_20
	vec1 32 ssa_121 = fsin ssa_120
	vec1 32 ssa_122 = flt ssa_121, ssa_16
	/* succs: block_1 block_2 */
	if ssa_122 {
		block block_1:
		/* preds: block_0 */
		/* succs: block_15 */
	} else {
		block block_2:
		/* preds: block_0 */
		vec1 32 ssa_123 = fmul ssa_118, ssa_118
		vec1 32 ssa_124 = ffma ssa_119, ssa_119, ssa_123
		vec1 32 ssa_125 = fadd abs(ssa_74), ssa_16
		vec1 32 ssa_126 = fmul ssa_125, ssa_17
		vec1 32 ssa_127 = fsin ssa_126
		vec1 32 ssa_128 = fmul ssa_16, ssa_127
		vec1 32 ssa_129 = ffma abs(ssa_74), ssa_15, ssa_128
		vec1 32 ssa_130 = fsin ssa_129
		vec1 32 ssa_131 = ffma -ssa_124, ssa_130, ssa_16
		vec1 32 ssa_132 = frcp ssa_131
		vec1 32 ssa_133 = fmul ssa_118, ssa_132
		vec1 32 ssa_134 = fmul ssa_119, ssa_132
		vec1 32 ssa_135 = fmul ssa_133, ssa_133
		vec1 32 ssa_136 = ffma ssa_134, ssa_134, ssa_135
		vec1 32 ssa_137 = fsqrt ssa_136
		vec1 32 ssa_138 = load_const (0x3e4cccce /* 0.200000 */)
		vec1 32 ssa_139 = ffma -ssa_138, ssa_137, ssa_18
		vec1 32 ssa_140 = fmul ssa_133, ssa_139
		vec1 32 ssa_141 = fmul ssa_134, ssa_139
		vec1 32 ssa_142 = fmul ssa_121, ssa_12
		vec1 32 ssa_143 = flt ssa_142, ssa_16
		/* succs: block_3 block_4 */
		if ssa_143 {
			block block_3:
			/* preds: block_2 */
			/* succs: block_14 */
		} else {
			block block_4:
			/* preds: block_2 */
			vec1 32 ssa_144 = fmul ssa_140, ssa_140
			vec1 32 ssa_145 = ffma ssa_141, ssa_141, ssa_144
			vec1 32 ssa_146 = fadd abs(ssa_74), ssa_18
			vec1 32 ssa_147 = fmul ssa_146, ssa_17
			vec1 32 ssa_148 = fsin ssa_147
			vec1 32 ssa_149 = fmul ssa_16, ssa_148
			vec1 32 ssa_150 = ffma abs(ssa_74), ssa_15, ssa_149
			vec1 32 ssa_151 = fsin ssa_150
			vec1 32 ssa_152 = ffma -ssa_145, ssa_151, ssa_18
			vec1 32 ssa_153 = frcp ssa_152
			vec1 32 ssa_154 = fmul ssa_140, ssa_153
			vec1 32 ssa_155 = fmul ssa_141, ssa_153
			vec1 32 ssa_156 = fmul ssa_154, ssa_154
			vec1 32 ssa_157 = ffma ssa_155, ssa_155, ssa_156
			vec1 32 ssa_158 = fsqrt ssa_157
			vec1 32 ssa_159 = load_const (0x3e19999a /* 0.150000 */)
			vec1 32 ssa_160 = ffma -ssa_159, ssa_158, ssa_18
			vec1 32 ssa_161 = fmul ssa_154, ssa_160
			vec1 32 ssa_162 = fmul ssa_155, ssa_160
			vec1 32 ssa_163 = fmul ssa_121, ssa_13
			vec1 32 ssa_164 = flt ssa_163, ssa_16
			/* succs: block_5 block_6 */
			if ssa_164 {
				block block_5:
				/* preds: block_4 */
				/* succs: block_13 */
			} else {
				block block_6:
				/* preds: block_4 */
				vec1 32 ssa_165 = fmul ssa_161, ssa_161
				vec1 32 ssa_166 = ffma ssa_162, ssa_162, ssa_165
				vec1 32 ssa_167 = fadd abs(ssa_74), ssa_12
				vec1 32 ssa_168 = fmul ssa_167, ssa_17
				vec1 32 ssa_169 = fsin ssa_168
				vec1 32 ssa_170 = fmul ssa_16, ssa_169
				vec1 32 ssa_171 = ffma abs(ssa_74), ssa_15, ssa_170
				vec1 32 ssa_172 = fsin ssa_171
				vec1 32 ssa_173 = ffma -ssa_166, ssa_172, ssa_12
				vec1 32 ssa_174 = frcp ssa_173
				vec1 32 ssa_175 = fmul ssa_161, ssa_174
				vec1 32 ssa_176 = fmul ssa_162, ssa_174
				vec1 32 ssa_177 = fmul ssa_175, ssa_175
				vec1 32 ssa_178 = ffma ssa_176, ssa_176, ssa_177
				vec1 32 ssa_179 = fsqrt ssa_178
				vec1 32 ssa_180 = load_const (0x40200000 /* 2.500000 */)
				vec1 32 ssa_181 = load_const (0x3df5c290 /* 0.120000 */)
				vec1 32 ssa_182 = ffma -ssa_181, ssa_179, ssa_18
				vec1 32 ssa_183 = fmul ssa_175, ssa_182
				vec1 32 ssa_184 = fmul ssa_176, ssa_182
				vec1 32 ssa_185 = fmul ssa_121, ssa_180
				vec1 32 ssa_186 = flt ssa_185, ssa_16
				/* succs: block_7 block_8 */
				if ssa_186 {
					block block_7:
					/* preds: block_6 */
					/* succs: block_12 */
				} else {
					block block_8:
					/* preds: block_6 */
					vec1 32 ssa_187 = fmul ssa_183, ssa_183
					vec1 32 ssa_188 = ffma ssa_184, ssa_184, ssa_187
					vec1 32 ssa_189 = fadd abs(ssa_74), ssa_13
					vec1 32 ssa_190 = fmul ssa_189, ssa_17
					vec1 32 ssa_191 = fsin ssa_190
					vec1 32 ssa_192 = fmul ssa_16, ssa_191
					vec1 32 ssa_193 = ffma abs(ssa_74), ssa_15, ssa_192
					vec1 32 ssa_194 = fsin ssa_193
					vec1 32 ssa_195 = ffma -ssa_188, ssa_194, ssa_13
					vec1 32 ssa_196 = frcp ssa_195
					vec1 32 ssa_197 = fmul ssa_183, ssa_196
					vec1 32 ssa_198 = fmul ssa_184, ssa_196
					vec1 32 ssa_199 = fmul ssa_197, ssa_197
					vec1 32 ssa_200 = ffma ssa_198, ssa_198, ssa_199
					vec1 32 ssa_201 = fsqrt ssa_200
					vec1 32 ssa_202 = load_const (0x40400000 /* 3.000000 */)
					vec1 32 ssa_203 = load_const (0x3dccccce /* 0.100000 */)
					vec1 32 ssa_204 = ffma -ssa_203, ssa_201, ssa_18
					vec1 32 ssa_205 = fmul ssa_197, ssa_204
					vec1 32 ssa_206 = fmul ssa_198, ssa_204
					vec1 32 ssa_207 = fmul ssa_121, ssa_202
					vec1 32 ssa_208 = flt ssa_207, ssa_16
					/* succs: block_9 block_10 */
					if ssa_208 {
						block block_9:
						/* preds: block_8 */
						/* succs: block_11 */
					} else {
						block block_10:
						/* preds: block_8 */
						vec1 32 ssa_209 = fmul ssa_205, ssa_205
						vec1 32 ssa_210 = ffma ssa_206, ssa_206, ssa_209
						vec1 32 ssa_211 = fadd abs(ssa_74), ssa_180
						vec1 32 ssa_212 = fmul ssa_211, ssa_17
						vec1 32 ssa_213 = fsin ssa_212
						vec1 32 ssa_214 = fmul ssa_16, ssa_213
						vec1 32 ssa_215 = ffma abs(ssa_74), ssa_15, ssa_214
						vec1 32 ssa_216 = fsin ssa_215
						vec1 32 ssa_217 = ffma -ssa_210, ssa_216, ssa_180
						vec1 32 ssa_218 = frcp ssa_217
						vec1 32 ssa_219 = fmul ssa_205, ssa_218
						vec1 32 ssa_220 = fmul ssa_206, ssa_218
						vec1 32 ssa_221 = fmul ssa_219, ssa_219
						vec1 32 ssa_222 = ffma ssa_220, ssa_220, ssa_221
						vec1 32 ssa_223 = fsqrt ssa_222
						vec1 32 ssa_224 = load_const (0x3daf8afa /* 0.085714 */)
						vec1 32 ssa_225 = ffma -ssa_224, ssa_223, ssa_18
						vec1 32 ssa_226 = fmul ssa_219, ssa_225
						vec1 32 ssa_227 = fmul ssa_220, ssa_225
						/* succs: block_11 */
					}
					block block_11:
					/* preds: block_9 block_10 */
					vec1 32 ssa_228 = phi block_9: ssa_205, block_10: ssa_226
					vec1 32 ssa_229 = phi block_9: ssa_206, block_10: ssa_227
					/* succs: block_12 */
				}
				block block_12:
				/* preds: block_7 block_11 */
				vec1 32 ssa_230 = phi block_7: ssa_183, block_11: ssa_228
				vec1 32 ssa_231 = phi block_7: ssa_184, block_11: ssa_229
				/* succs: block_13 */
			}
			block block_13:
			/* preds: block_5 block_12 */
			vec1 32 ssa_232 = phi block_5: ssa_161, block_12: ssa_230
			vec1 32 ssa_233 = phi block_5: ssa_162, block_12: ssa_231
			/* succs: block_14 */
		}
		block block_14:
		/* preds: block_3 block_13 */
		vec1 32 ssa_234 = phi block_3: ssa_140, block_13: ssa_232
		vec1 32 ssa_235 = phi block_3: ssa_141, block_13: ssa_233
		/* succs: block_15 */
	}
	block block_15:
	/* preds: block_1 block_14 */
	vec1 32 ssa_236 = phi block_1: ssa_118, block_14: ssa_234
	vec1 32 ssa_237 = phi block_1: ssa_119, block_14: ssa_235
	vec1 32 ssa_238 = ffma ssa_90, ssa_98, -ssa_66.y
	vec1 32 ssa_239 = ffma ssa_88, ssa_92, -ssa_66.x
	vec1 32 ssa_240 = fmul ssa_239, ssa_239
	vec1 32 ssa_241 = ffma ssa_238, ssa_238, ssa_240
	vec1 32 ssa_242 = ffma -ssa_241, ssa_19, ssa_18
	vec1 32 ssa_243 = frcp ssa_242
	vec1 32 ssa_244 = fmul ssa_236, ssa_243
	vec1 32 ssa_245 = fmul ssa_237, ssa_243
	vec1 32 ssa_246 = ffma abs(ssa_74), ssa_15, ssa_21
	vec1 32 ssa_247 = fcos ssa_246
	vec1 32 ssa_248 = fsin ssa_246
	vec1 32 ssa_249 = fmul ssa_244, ssa_21
	vec1 32 ssa_250 = fmul ssa_245, ssa_21
	vec1 32 ssa_251 = fadd ssa_66.x, ssa_23
	vec1 32 ssa_252 = fadd ssa_66.y, ssa_23
	vec1 32 ssa_253 = fmul ssa_25, abs(ssa_74)
	vec1 32 ssa_254 = fcos ssa_253
	vec1 32 ssa_255 = ffma ssa_24, ssa_254, ssa_120
	vec1 32 ssa_256 = ffma -ssa_22, ssa_251, ssa_255
	vec1 32 ssa_257 = fsin ssa_253
	vec1 32 ssa_258 = ffma ssa_24, ssa_257, ssa_120
	vec1 32 ssa_259 = ffma -ssa_22, ssa_252, ssa_258
	vec1 32 ssa_260 = fmul ssa_249, ssa_247
	vec1 32 ssa_261 = ffma ssa_250, ssa_248, ssa_260
	vec1 32 ssa_262 = fmul ssa_248, ssa_249
	vec1 32 ssa_263 = ffma ssa_250, ssa_247, -ssa_262
	vec1 32 ssa_264 = ffma ssa_261, ssa_27, ssa_26
	vec1 32 ssa_265 = ffma ssa_261, ssa_28, ssa_27
	vec1 32 ssa_266 = fmul ssa_263, ssa_30
	vec1 32 ssa_267 = ffma ssa_265, ssa_29, ssa_266
	vec1 32 ssa_268 = fmul ssa_263, ssa_31
	vec1 32 ssa_269 = ffma ssa_265, ssa_30, ssa_268
	vec1 32 ssa_270 = fmul ssa_247, ssa_256
	vec1 32 ssa_271 = ffma -ssa_248, ssa_259, -ssa_270
	vec1 32 ssa_272 = fmul ssa_248, ssa_256
	vec1 32 ssa_273 = ffma -ssa_247, ssa_259, ssa_272
	vec1 32 ssa_274 = load_const (0x3b1a0223 /* 0.002350 */)
	vec1 32 ssa_275 = fmul ssa_271, ssa_27
	vec1 32 ssa_276 = ffma ssa_274, abs(ssa_74), ssa_275
	vec1 32 ssa_277 = load_const (0x3af46d4f /* 0.001865 */)
	vec1 32 ssa_278 = fmul ssa_271, ssa_28
	vec1 32 ssa_279 = ffma ssa_277, abs(ssa_74), ssa_278
	vec1 32 ssa_280 = fmul ssa_273, ssa_30
	vec1 32 ssa_281 = ffma ssa_279, ssa_29, ssa_280
	vec1 32 ssa_282 = fmul ssa_273, ssa_31
	vec1 32 ssa_283 = ffma ssa_279, ssa_30, ssa_282
	vec1 32 ssa_284 = fadd abs(ssa_74), ssa_32
	vec1 32 ssa_285 = fmul ssa_284, ssa_78
	vec1 32 ssa_286 = ffma ssa_26, ssa_285, ssa_276
	vec1 32 ssa_287 = ffma ssa_33, ssa_285, ssa_281
	vec1 32 ssa_288 = ffma ssa_34, ssa_285, ssa_283
	vec1 32 ssa_289 = fmul ssa_285, ssa_36
	vec1 32 ssa_290 = ffloor ssa_289
	vec1 32 ssa_291 = ffma -ssa_35, ssa_290, ssa_285
	vec1 32 ssa_292 = fmul ssa_291, ssa_36
	/* succs: block_16 */
	loop {
		block block_16:
		/* preds: block_15 block_33 */
		vec1 32 ssa_293 = phi block_15: ssa_38, block_33: ssa_497
		vec1 32 ssa_294 = phi block_15: ssa_37, block_33: ssa_496
		vec1 32 ssa_295 = phi block_15: ssa_1, block_33: ssa_482
		vec1 32 ssa_296 = phi block_15: ssa_1, block_33: ssa_485
		vec1 32 ssa_297 = phi block_15: ssa_1, block_33: ssa_487
		vec1 32 ssa_298 = phi block_15: ssa_1, block_33: ssa_495
		vec1 32 ssa_299 = phi block_15: ssa_1, block_33: ssa_490
		vec1 32 ssa_300 = phi block_15: ssa_1, block_33: ssa_491
		vec1 32 ssa_301 = phi block_15: ssa_1, block_33: ssa_498
		vec1 32 ssa_302 = ige ssa_301, ssa_39
		/* succs: block_17 block_18 */
		if ssa_302 {
			block block_17:
			/* preds: block_16 */
			break
			/* succs: block_34 */
		} else {
			block block_18:
			/* preds: block_16 */
			/* succs: block_19 */
		}
		block block_19:
		/* preds: block_18 */
		vec1 32 ssa_303 = fadd ssa_294, -ssa_291
		vec1 32 ssa_304 = ffma ssa_303, ssa_264, ssa_286
		vec1 32 ssa_305 = load_const (0x3f169696 /* 0.588235 */)
		vec1 32 ssa_306 = fmul ssa_304, ssa_305
		vec1 32 ssa_307 = ffloor ssa_306
		vec1 32 ssa_308 = ffma -ssa_41, ssa_307, ssa_304
		vec1 32 ssa_309 = fadd ssa_40, -ssa_308
		vec1 32 ssa_310 = fmov abs(ssa_309)
		vec1 32 ssa_311 = ffma ssa_303, ssa_267, ssa_287
		vec1 32 ssa_312 = fmul ssa_311, ssa_305
		vec1 32 ssa_313 = ffloor ssa_312
		vec1 32 ssa_314 = ffma -ssa_41, ssa_313, ssa_311
		vec1 32 ssa_315 = fadd ssa_40, -ssa_314
		vec1 32 ssa_316 = fmov abs(ssa_315)
		vec1 32 ssa_317 = ffma ssa_303, ssa_269, ssa_288
		vec1 32 ssa_318 = fmul ssa_317, ssa_305
		vec1 32 ssa_319 = ffloor ssa_318
		vec1 32 ssa_320 = ffma -ssa_41, ssa_319, ssa_317
		vec1 32 ssa_321 = fadd ssa_40, -ssa_320
		vec1 32 ssa_322 = fmov abs(ssa_321)
		vec1 32 ssa_323 = fadd ssa_293, -ssa_291
		vec1 32 ssa_324 = ffma ssa_323, ssa_264, ssa_286
		vec1 32 ssa_325 = fmul ssa_324, ssa_305
		vec1 32 ssa_326 = ffloor ssa_325
		vec1 32 ssa_327 = ffma -ssa_41, ssa_326, ssa_324
		vec1 32 ssa_328 = fadd ssa_40, -ssa_327
		vec1 32 ssa_329 = ffma ssa_323, ssa_267, ssa_287
		vec1 32 ssa_330 = fmul ssa_329, ssa_305
		vec1 32 ssa_331 = ffloor ssa_330
		vec1 32 ssa_332 = ffma -ssa_41, ssa_331, ssa_329
		vec1 32 ssa_333 = fadd ssa_40, -ssa_332
		vec1 32 ssa_334 = ffma ssa_323, ssa_269, ssa_288
		vec1 32 ssa_335 = fmul ssa_334, ssa_305
		vec1 32 ssa_336 = ffloor ssa_335
		vec1 32 ssa_337 = ffma -ssa_41, ssa_336, ssa_334
		vec1 32 ssa_338 = fadd ssa_40, -ssa_337
		vec1 32 ssa_339 = fsin abs(ssa_74)
		vec1 32 ssa_340 = fmul ssa_339, ssa_44
		vec1 32 ssa_341 = ffract ssa_340
		vec1 32 ssa_342 = fadd ssa_43, ssa_341
		vec1 32 ssa_343 = flog2 ssa_342
		vec1 32 ssa_344 = fmul ssa_343, ssa_45
		vec1 32 ssa_345 = fadd ssa_42, ssa_344
		vec1 32 ssa_346 = fmul abs(ssa_328), abs(ssa_328)
		vec1 32 ssa_347 = ffma abs(ssa_333), abs(ssa_333), ssa_346
		vec1 32 ssa_348 = ffma abs(ssa_338), abs(ssa_338), ssa_347
		vec1 32 ssa_349 = fadd ssa_18, -ssa_348
		vec1 32 ssa_350 = frcp ssa_349
		vec1 32 ssa_351 = ffma abs(ssa_328), ssa_350, ssa_23
		vec1 32 ssa_352 = ffma abs(ssa_74), ssa_47, ssa_13
		vec1 32 ssa_353 = fsin ssa_352
		vec1 32 ssa_354 = ffma ssa_15, ssa_353, ssa_46
		vec1 32 ssa_355 = ffma abs(ssa_333), ssa_350, ssa_354
		vec1 32 ssa_356 = fmul abs(ssa_74), ssa_19
		vec1 32 ssa_357 = fcos ssa_356
		vec1 32 ssa_358 = ffma ssa_19, ssa_357, ssa_48
		vec1 32 ssa_359 = ffma abs(ssa_338), ssa_350, ssa_358
		vec1 32 ssa_360 = fpow abs(ssa_349), ssa_49
		vec1 32 ssa_361 = fmul ssa_345, ssa_360
		vec1 32 ssa_362 = fmul ssa_361, ssa_50
		vec1 32 ssa_363 = fexp2 -ssa_362
		vec1 32 ssa_364 = fmul ssa_351, ssa_351
		vec1 32 ssa_365 = ffma ssa_355, ssa_355, ssa_364
		vec1 32 ssa_366 = ffma ssa_359, ssa_359, ssa_365
		vec1 32 ssa_367 = fadd ssa_18, -ssa_366
		vec1 32 ssa_368 = frcp ssa_367
		vec1 32 ssa_369 = ffma abs(ssa_351), ssa_368, ssa_23
		vec1 32 ssa_370 = ffma abs(ssa_355), ssa_368, ssa_354
		vec1 32 ssa_371 = ffma abs(ssa_359), ssa_368, ssa_358
		vec1 32 ssa_372 = load_const (0xbe530bb2 /* -0.206099 */)
		vec1 32 ssa_373 = fadd ssa_367, -ssa_349
		vec1 32 ssa_374 = fpow abs(ssa_373), ssa_49
		vec1 32 ssa_375 = fmul ssa_345, ssa_374
		vec1 32 ssa_376 = ffma -ssa_375, ssa_50, ssa_372
		vec1 32 ssa_377 = fexp2 ssa_376
		vec1 32 ssa_378 = fadd ssa_363, ssa_377
		vec1 32 ssa_379 = fmul ssa_369, ssa_369
		vec1 32 ssa_380 = ffma ssa_370, ssa_370, ssa_379
		vec1 32 ssa_381 = ffma ssa_371, ssa_371, ssa_380
		vec1 32 ssa_382 = fadd ssa_18, -ssa_381
		vec1 32 ssa_383 = frcp ssa_382
		vec1 32 ssa_384 = ffma abs(ssa_369), ssa_383, ssa_23
		vec1 32 ssa_385 = ffma abs(ssa_370), ssa_383, ssa_354
		vec1 32 ssa_386 = ffma abs(ssa_371), ssa_383, ssa_358
		vec1 32 ssa_387 = load_const (0xbed30bb2 /* -0.412199 */)
		vec1 32 ssa_388 = fadd ssa_382, -ssa_367
		vec1 32 ssa_389 = fpow abs(ssa_388), ssa_49
		vec1 32 ssa_390 = fmul ssa_345, ssa_389
		vec1 32 ssa_391 = ffma -ssa_390, ssa_50, ssa_387
		vec1 32 ssa_392 = fexp2 ssa_391
		vec1 32 ssa_393 = fadd ssa_378, ssa_392
		vec1 32 ssa_394 = fmul ssa_384, ssa_384
		vec1 32 ssa_395 = ffma ssa_385, ssa_385, ssa_394
		vec1 32 ssa_396 = ffma ssa_386, ssa_386, ssa_395
		vec1 32 ssa_397 = fadd ssa_18, -ssa_396
		vec1 32 ssa_398 = frcp ssa_397
		vec1 32 ssa_399 = ffma abs(ssa_384), ssa_398, ssa_23
		vec1 32 ssa_400 = ffma abs(ssa_385), ssa_398, ssa_354
		vec1 32 ssa_401 = ffma abs(ssa_386), ssa_398, ssa_358
		vec1 32 ssa_402 = load_const (0xbf1e48c6 /* -0.618298 */)
		vec1 32 ssa_403 = fadd ssa_397, -ssa_382
		vec1 32 ssa_404 = fpow abs(ssa_403), ssa_49
		vec1 32 ssa_405 = fmul ssa_345, ssa_404
		vec1 32 ssa_406 = ffma -ssa_405, ssa_50, ssa_402
		vec1 32 ssa_407 = fexp2 ssa_406
		vec1 32 ssa_408 = fadd ssa_393, ssa_407
		vec1 32 ssa_409 = fmul ssa_399, ssa_399
		vec1 32 ssa_410 = ffma ssa_400, ssa_400, ssa_409
		vec1 32 ssa_411 = ffma ssa_401, ssa_401, ssa_410
		vec1 32 ssa_412 = fadd ssa_18, -ssa_411
		vec1 32 ssa_413 = frcp ssa_412
		vec1 32 ssa_414 = ffma abs(ssa_399), ssa_413, ssa_23
		vec1 32 ssa_415 = ffma abs(ssa_400), ssa_413, ssa_354
		vec1 32 ssa_416 = ffma abs(ssa_401), ssa_413, ssa_358
		vec1 32 ssa_417 = load_const (0xbf530bb2 /* -0.824397 */)
		vec1 32 ssa_418 = fadd ssa_412, -ssa_397
		vec1 32 ssa_419 = fpow abs(ssa_418), ssa_49
		vec1 32 ssa_420 = fmul ssa_345, ssa_419
		vec1 32 ssa_421 = ffma -ssa_420, ssa_50, ssa_417
		vec1 32 ssa_422 = fexp2 ssa_421
		vec1 32 ssa_423 = fadd ssa_408, ssa_422
		vec1 32 ssa_424 = fmul ssa_414, ssa_414
		vec1 32 ssa_425 = ffma ssa_415, ssa_415, ssa_424
		vec1 32 ssa_426 = ffma ssa_416, ssa_416, ssa_425
		vec1 32 ssa_427 = fadd ssa_18, -ssa_426
		vec1 32 ssa_428 = load_const (0xbf83e74f /* -1.030496 */)
		vec1 32 ssa_429 = fadd ssa_427, -ssa_412
		vec1 32 ssa_430 = fpow abs(ssa_429), ssa_49
		vec1 32 ssa_431 = fmul ssa_345, ssa_430
		vec1 32 ssa_432 = ffma -ssa_431, ssa_50, ssa_428
		vec1 32 ssa_433 = fexp2 ssa_432
		vec1 32 ssa_434 = fadd ssa_423, ssa_433
		vec1 32 ssa_435 = load_const (0x3f94025f /* 1.156322 */)
		vec1 32 ssa_436 = fmul ssa_435, ssa_434
		vec1 32 ssa_437 = fadd ssa_436, ssa_52
		vec1 32 ssa_438 = fmax ssa_1, ssa_437
		/* succs: block_20 */
		loop {
			block block_20:
			/* preds: block_19 block_26 */
			vec1 32 ssa_439 = phi block_19: ssa_1, block_26: ssa_462
			vec1 32 ssa_440 = phi block_19: ssa_1, block_26: ssa_456
			vec1 32 ssa_441 = phi block_19: ssa_322, block_26: ssa_452
			vec1 32 ssa_442 = phi block_19: ssa_316, block_26: ssa_451
			vec1 32 ssa_443 = phi block_19: ssa_310, block_26: ssa_450
			vec1 32 ssa_444 = phi block_19: ssa_1, block_26: ssa_463
			vec1 32 ssa_445 = ige ssa_444, ssa_53
			/* succs: block_21 block_22 */
			if ssa_445 {
				block block_21:
				/* preds: block_20 */
				break
				/* succs: block_27 */
			} else {
				block block_22:
				/* preds: block_20 */
				/* succs: block_23 */
			}
			block block_23:
			/* preds: block_22 */
			vec1 32 ssa_446 = fmul ssa_443, ssa_443
			vec1 32 ssa_447 = ffma ssa_442, ssa_442, ssa_446
			vec1 32 ssa_448 = ffma ssa_441, ssa_441, ssa_447
			vec1 32 ssa_449 = frcp ssa_448
			vec1 32 ssa_450 = ffma abs(ssa_443), ssa_449, ssa_54
			vec1 32 ssa_451 = ffma abs(ssa_442), ssa_449, ssa_54
			vec1 32 ssa_452 = ffma abs(ssa_441), ssa_449, ssa_54
			vec1 32 ssa_453 = fmul ssa_450, ssa_450
			vec1 32 ssa_454 = ffma ssa_451, ssa_451, ssa_453
			vec1 32 ssa_455 = ffma ssa_452, ssa_452, ssa_454
			vec1 32 ssa_456 = fsqrt ssa_455
			vec1 32 ssa_457 = fadd ssa_456, -ssa_440
			vec1 32 ssa_458 = fmov abs(ssa_457)
			vec1 32 ssa_459 = ilt ssa_55, ssa_444
			/* succs: block_24 block_25 */
			if ssa_459 {
				block block_24:
				/* preds: block_23 */
				vec1 32 ssa_460 = fmin ssa_56, abs(ssa_457)
				/* succs: block_26 */
			} else {
				block block_25:
				/* preds: block_23 */
				/* succs: block_26 */
			}
			block block_26:
			/* preds: block_24 block_25 */
			vec1 32 ssa_461 = phi block_24: ssa_460, block_25: ssa_458
			vec1 32 ssa_462 = fadd ssa_439, ssa_461
			vec1 32 ssa_463 = iadd ssa_444, ssa_51
			/* succs: block_20 */
		}
		block block_27:
		/* preds: block_21 */
		vec1 32 ssa_464 = fmul ssa_439, ssa_439
		vec1 32 ssa_465 = fmul ssa_439, ssa_464
		vec1 32 ssa_466 = i2f ssa_301
		vec1 32 ssa_467 = fadd ssa_466, -ssa_292
		vec1 32 ssa_468 = fmax ssa_1, ssa_467
		vec1 32 ssa_469 = fpow ssa_57, ssa_468
		vec1 32 ssa_470 = fadd ssa_295, ssa_469
		vec1 32 ssa_471 = fadd ssa_296, ssa_469
		vec1 32 ssa_472 = fadd ssa_297, ssa_469
		vec1 32 ssa_473 = ieq ssa_301, ssa_1
		/* succs: block_28 block_29 */
		if ssa_473 {
			block block_28:
			/* preds: block_27 */
			vec1 32 ssa_474 = fadd ssa_18, -ssa_292
			vec1 32 ssa_475 = fmul ssa_469, ssa_474
			/* succs: block_30 */
		} else {
			block block_29:
			/* preds: block_27 */
			/* succs: block_30 */
		}
		block block_30:
		/* preds: block_28 block_29 */
		vec1 32 ssa_476 = phi block_28: ssa_475, block_29: ssa_469
		vec1 32 ssa_477 = ieq ssa_301, ssa_58
		/* succs: block_31 block_32 */
		if ssa_477 {
			block block_31:
			/* preds: block_30 */
			vec1 32 ssa_478 = fmul ssa_476, ssa_292
			/* succs: block_33 */
		} else {
			block block_32:
			/* preds: block_30 */
			/* succs: block_33 */
		}
		block block_33:
		/* preds: block_31 block_32 */
		vec1 32 ssa_479 = phi block_31: ssa_478, block_32: ssa_476
		vec1 32 ssa_480 = fmul ssa_59, ssa_479
		vec1 32 ssa_481 = fmul ssa_303, ssa_465
		vec1 32 ssa_482 = ffma ssa_481, ssa_480, ssa_470
		vec1 32 ssa_483 = fmul ssa_303, ssa_303
		vec1 32 ssa_484 = fmul ssa_465, ssa_480
		vec1 32 ssa_485 = ffma ssa_483, ssa_484, ssa_471
		vec1 32 ssa_486 = fmul ssa_483, ssa_483
		vec1 32 ssa_487 = ffma ssa_486, ssa_484, ssa_472
		vec1 32 ssa_488 = fmul ssa_60, ssa_438
		vec1 32 ssa_489 = fmul ssa_438, ssa_479
		vec1 32 ssa_490 = ffma ssa_488, ssa_489, ssa_299
		vec1 32 ssa_491 = fadd ssa_300, ssa_489
		vec1 32 ssa_492 = fmul ssa_24, ssa_438
		vec1 32 ssa_493 = fmul ssa_438, ssa_438
		vec1 32 ssa_494 = fmul ssa_493, ssa_479
		vec1 32 ssa_495 = ffma ssa_492, ssa_494, ssa_298
		vec1 32 ssa_496 = fadd ssa_294, ssa_35
		vec1 32 ssa_497 = fadd ssa_293, ssa_35
		vec1 32 ssa_498 = iadd ssa_301, ssa_51
		/* succs: block_16 */
	}
	block block_34:
	/* preds: block_17 */
	vec1 32 ssa_499 = fmul ssa_295, ssa_295
	vec1 32 ssa_500 = ffma ssa_296, ssa_296, ssa_499
	vec1 32 ssa_501 = ffma ssa_297, ssa_297, ssa_500
	vec1 32 ssa_502 = fsqrt ssa_501
	vec1 32 ssa_503 = flrp ssa_502, ssa_295, ssa_61
	vec1 32 ssa_504 = flrp ssa_502, ssa_296, ssa_61
	vec1 32 ssa_505 = flrp ssa_502, ssa_297, ssa_61
	vec1 32 ssa_506 = fsin abs(ssa_74)
	vec1 32 ssa_507 = fmul ssa_62, ssa_506
	vec1 32 ssa_508 = fmul ssa_298, ssa_507
	vec1 32 ssa_509 = fmul ssa_299, ssa_507
	vec1 32 ssa_510 = fmul ssa_300, ssa_507
	vec1 32 ssa_511 = fmul ssa_510, ssa_24
	vec1 32 ssa_512 = fmul ssa_508, ssa_17
	vec1 32 ssa_513 = flrp ssa_509, ssa_511, ssa_63
	vec1 32 ssa_514 = fmul ssa_16, ssa_513
	vec1 32 ssa_515 = fadd ssa_254, ssa_18
	vec1 32 ssa_516 = fmul ssa_16, ssa_515
	vec1 32 ssa_517 = fmul ssa_514, ssa_516
	vec1 32 ssa_518 = fadd ssa_18, -ssa_516
	vec1 32 ssa_519 = fmul ssa_514, ssa_518
	vec1 32 ssa_520 = ffma ssa_503, ssa_25, ssa_512
	vec1 32 ssa_521 = fmin.sat ssa_520, ssa_16
	vec1 32 ssa_522 = fmul ssa_521, ssa_13
	vec1 32 ssa_523 = ffma ssa_504, ssa_25, ssa_519
	vec1 32 ssa_524 = fmin.sat ssa_523, ssa_16
	vec1 32 ssa_525 = fmul ssa_524, ssa_13
	vec1 32 ssa_526 = ffma ssa_505, ssa_25, ssa_517
	vec1 32 ssa_527 = fmin.sat ssa_526, ssa_16
	vec1 32 ssa_528 = fmul ssa_527, ssa_13
	vec4 32 ssa_529 = vec4 ssa_522, ssa_525, ssa_528, ssa_18
	intrinsic store_output (ssa_529, ssa_1) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

NIR (final form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: GLSL1
inputs: 0
outputs: 0
uniforms: 36
shared: 0
decl_var uniform INTERP_MODE_NONE float time (0, 0, 0)
decl_var uniform INTERP_MODE_NONE vec2 mouse (1, 4, 0)
decl_var uniform INTERP_MODE_NONE vec2 resolution (2, 12, 0)
decl_var uniform INTERP_MODE_NONE vec4 gl_FbWposYTransform (0, 20, 0)
decl_var shader_in INTERP_MODE_SMOOTH vec4 gl_FragCoord (VARYING_SLOT_POS, 0, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	decl_reg vec1 32 r9
	decl_reg vec1 32 r10
	decl_reg vec1 32 r11
	decl_reg vec1 32 r12
	decl_reg vec1 32 r13
	decl_reg vec1 32 r14
	decl_reg vec1 32 r15
	decl_reg vec1 32 r16
	decl_reg vec1 32 r17
	decl_reg vec1 32 r18
	decl_reg vec1 32 r19
	decl_reg vec1 32 r20
	decl_reg vec1 32 r21
	decl_reg vec1 32 r22
	decl_reg vec1 32 r23
	decl_reg vec1 32 r24
	decl_reg vec1 32 r25
	decl_reg vec1 32 r26
	decl_reg vec1 32 r27
	decl_reg vec1 32 r28
	block block_0:
	/* preds: */
	vec2 32 ssa_0 = intrinsic load_barycentric_pixel () () (1) /* interp_mode=1 */
	vec1 32 ssa_1 = load_const (0x00000000 /* 0.000000 */)
	vec4 32 ssa_2 = intrinsic load_interpolated_input (ssa_0, ssa_1) () (0, 0) /* base=0 */ /* component=0 */
	vec1 32 ssa_3 = load_const (0x38d1b717 /* 0.000100 */)
	vec1 32 ssa_4 = load_const (0x3cac0831 /* 0.021000 */)
	vec1 32 ssa_5 = load_const (0x42f20000 /* 121.000000 */)
	vec1 32 ssa_6 = load_const (0x3b03126f /* 0.002000 */)
	vec1 32 ssa_7 = load_const (0x3ba3d70a /* 0.005000 */)
	vec1 32 ssa_8 = load_const (0x3ca3d70a /* 0.020000 */)
	vec1 32 ssa_9 = load_const (0x3f490fda /* 0.785398 */)
	vec1 32 ssa_10 = load_const (0x41200000 /* 10.000000 */)
	vec1 32 ssa_11 = load_const (0x3f8ccccd /* 1.100000 */)
	vec1 32 ssa_12 = load_const (0x3fc00000 /* 1.500000 */)
	vec1 32 ssa_13 = load_const (0x40000000 /* 2.000000 */)
	vec1 32 ssa_14 = load_const (0xbf800000 /* -1.000000 */)
	vec1 32 ssa_15 = load_const (0x3dcccccd /* 0.100000 */)
	vec1 32 ssa_16 = load_const (0x3f000000 /* 0.500000 */)
	vec1 32 ssa_17 = load_const (0x3d4ccccd /* 0.050000 */)
	vec1 32 ssa_18 = load_const (0x3f800000 /* 1.000000 */)
	vec1 32 ssa_19 = load_const (0x3e99999a /* 0.300000 */)
	vec1 32 ssa_20 = load_const (0x3a83126f /* 0.001000 */)
	vec1 32 ssa_21 = load_const (0x3f666666 /* 0.900000 */)
	vec1 32 ssa_22 = load_const (0x40a00000 /* 5.000000 */)
	vec1 32 ssa_23 = load_const (0xbf000000 /* -0.500000 */)
	vec1 32 ssa_24 = load_const (0x3fe66666 /* 1.800000 */)
	vec1 32 ssa_25 = load_const (0x3c23d70a /* 0.010000 */)
	vec1 32 ssa_26 = load_const (0x3f48881d /* 0.783327 */)
	vec1 32 ssa_27 = load_const (0x3f1f21d5 /* 0.621610 */)
	vec1 32 ssa_28 = load_const (0xbf48881d /* -0.783327 */)
	vec1 32 ssa_29 = load_const (0xbf108c69 /* -0.564642 */)
	vec1 32 ssa_30 = load_const (0x3f534932 /* 0.825336 */)
	vec1 32 ssa_31 = load_const (0x3f108c69 /* 0.564642 */)
	vec1 32 ssa_32 = load_const (0xc54ef000 /* -3311.000000 */)
	vec1 32 ssa_33 = load_const (0xbeb3b49f /* -0.350987 */)
	vec1 32 ssa_34 = load_const (0x3f035662 /* 0.513037 */)
	vec1 32 ssa_35 = load_const (0x3c3295ea /* 0.010900 */)
	vec1 32 ssa_36 = load_const (0x42b77c7a /* 91.743118 */)
	vec1 32 ssa_37 = load_const (0x3e75c28f /* 0.240000 */)
	vec1 32 ssa_38 = load_const (0x3e7b573e /* 0.245450 */)
	vec1 32 ssa_39 = load_const (0x0000001b /* 0.000000 */)
	vec1 32 ssa_40 = load_const (0x3f59999a /* 0.850000 */)
	vec1 32 ssa_41 = load_const (0x3fd9999a /* 1.700000 */)
	vec1 32 ssa_42 = load_const (0x40e00000 /* 7.000000 */)
	vec1 32 ssa_43 = load_const (0x358637bd /* 0.000001 */)
	vec1 32 ssa_44 = load_const (0x4588a8e1 /* 4373.109863 */)
	vec1 32 ssa_45 = load_const (0x3caa590d /* 0.020794 */)
	vec1 32 ssa_46 = load_const (0xbf4ccccd /* -0.800000 */)
	vec1 32 ssa_47 = load_const (0x3f333333 /* 0.700000 */)
	vec1 32 ssa_48 = load_const (0xbf8ccccd /* -1.100000 */)
	vec1 32 ssa_49 = load_const (0x40133333 /* 2.300000 */)
	vec1 32 ssa_50 = load_const (0x3fb8aa3b /* 1.442695 */)
	vec1 32 ssa_51 = load_const (0x00000001 /* 0.000000 */)
	vec1 32 ssa_52 = load_const (0xbf333333 /* -0.700000 */)
	vec1 32 ssa_53 = load_const (0x00000032 /* 0.000000 */)
	vec1 32 ssa_54 = load_const (0xbf4a3d71 /* -0.790000 */)
	vec1 32 ssa_55 = load_const (0x00000007 /* 0.000000 */)
	vec1 32 ssa_56 = load_const (0x41400000 /* 12.000000 */)
	vec1 32 ssa_57 = load_const (0x3f428f5c /* 0.760000 */)
	vec1 32 ssa_58 = load_const (0x0000001a /* 0.000000 */)
	vec1 32 ssa_59 = load_const (0x38fba882 /* 0.000120 */)
	vec1 32 ssa_60 = load_const (0x3fb33333 /* 1.400000 */)
	vec1 32 ssa_61 = load_const (0x3f7ae148 /* 0.980000 */)
	vec1 32 ssa_62 = load_const (0x3e581062 /* 0.211000 */)
	vec1 32 ssa_63 = load_const (0x3f4ccccd /* 0.800000 */)
	vec1 32 ssa_64 = intrinsic load_uniform (ssa_1) () (0, 4) /* base=0 */ /* range=4 */	/* time */
	vec1 32 ssa_65 = fmul ssa_64, ssa_3
	vec2 32 ssa_66 = intrinsic load_uniform (ssa_1) () (4, 8) /* base=4 */ /* range=8 */	/* mouse */
	vec1 32 ssa_67 = ffma ssa_64, ssa_4, ssa_66.x
	vec1 32 ssa_68 = fsin ssa_67
	vec1 32 ssa_69 = fmul ssa_65, abs(ssa_68)
	vec1 32 ssa_70 = fsin ssa_69
	vec1 32 ssa_71 = fmul ssa_64, ssa_6
	vec1 32 ssa_72 = fsin ssa_71
	vec1 32 ssa_73 = fmul ssa_5, ssa_72
	vec1 32 ssa_74 = ffma ssa_70, ssa_64, ssa_73
	vec1 32 ssa_75 = fmul abs(ssa_74), ssa_8
	vec1 32 ssa_76 = fadd ssa_75, ssa_9
	vec1 32 ssa_77 = fcos ssa_76
	vec1 32 ssa_78 = fmul ssa_7, ssa_77
	vec2 32 ssa_79 = intrinsic load_uniform (ssa_1) () (12, 8) /* base=12 */ /* range=8 */	/* resolution */
	vec1 32 ssa_80 = fmax ssa_79.x, ssa_79.y
	vec1 32 ssa_81 = frcp ssa_80
	vec1 32 ssa_82 = fmul abs(ssa_74), ssa_12
	vec1 32 ssa_83 = fsin ssa_82
	vec1 32 ssa_84 = fmul ssa_11, ssa_83
	vec1 32 ssa_85 = fadd ssa_10, ssa_84
	vec4 32 ssa_86 = intrinsic load_uniform (ssa_1) () (20, 16) /* base=20 */ /* range=16 */	/* gl_FbWposYTransform */
	vec4 32 ssa_87 = load_const (0x3f000000 /* 0.500000 */, 0x3f000000 /* 0.500000 */, 0x00000000 /* 0.000000 */, 0x00000000 /* 0.000000 */)
	vec1 32 ssa_88 = fadd ssa_2.x, ssa_87.x
	vec1 32 ssa_89 = fadd ssa_2.y, ssa_87.y
	vec1 32 ssa_90 = ffma ssa_89, ssa_86.x, ssa_86.y
	vec1 32 ssa_91 = fmul ssa_13, ssa_88
	vec1 32 ssa_92 = frcp ssa_79.x
	vec1 32 ssa_93 = ffma ssa_91, ssa_92, ssa_14
	vec1 32 ssa_94 = fmul ssa_93, ssa_79.x
	vec1 32 ssa_95 = fmul ssa_94, ssa_81
	vec1 32 ssa_96 = fmul ssa_95, ssa_85
	vec1 32 ssa_97 = fmul ssa_13, ssa_90
	vec1 32 ssa_98 = frcp ssa_79.y
	vec1 32 ssa_99 = ffma ssa_97, ssa_98, ssa_14
	vec1 32 ssa_100 = fmul ssa_99, ssa_79.y
	vec1 32 ssa_101 = fmul ssa_100, ssa_81
	vec1 32 ssa_102 = fmul ssa_101, ssa_85
	vec1 32 ssa_103 = fmul ssa_96, ssa_96
	vec1 32 ssa_104 = ffma ssa_102, ssa_102, ssa_103
	vec1 32 ssa_105 = fmul abs(ssa_74), ssa_17
	vec1 32 ssa_106 = fsin ssa_105
	vec1 32 ssa_107 = fmul ssa_16, ssa_106
	vec1 32 ssa_108 = ffma abs(ssa_74), ssa_15, ssa_107
	vec1 32 ssa_109 = fsin ssa_108
	vec1 32 ssa_110 = fmul ssa_104, ssa_109
	vec1 32 ssa_111 = frcp -ssa_110
	vec1 32 ssa_112 = fmul ssa_96, ssa_111
	vec1 32 ssa_113 = fmul ssa_102, ssa_111
	vec1 32 ssa_114 = fmul ssa_112, ssa_112
	vec1 32 ssa_115 = ffma ssa_113, ssa_113, ssa_114
	vec1 32 ssa_116 = fsqrt ssa_115
	vec1 32 ssa_117 = ffma -ssa_116, ssa_19, ssa_18
	r9 = fmul ssa_112, ssa_117
	r10 = fmul ssa_113, ssa_117
	vec1 32 ssa_120 = fmul abs(ssa_74), ssa_20
	vec1 32 ssa_121 = fsin ssa_120
	vec1 32 ssa_122 = flt ssa_121, ssa_16
	/* succs: block_1 block_2 */
	if ssa_122 {
		block block_1:
		/* preds: block_0 */
		/* succs: block_15 */
	} else {
		block block_2:
		/* preds: block_0 */
		vec1 32 ssa_123 = fmul r9, r9
		vec1 32 ssa_124 = ffma r10, r10, ssa_123
		vec1 32 ssa_125 = fadd abs(ssa_74), ssa_16
		vec1 32 ssa_126 = fmul ssa_125, ssa_17
		vec1 32 ssa_127 = fsin ssa_126
		vec1 32 ssa_128 = fmul ssa_16, ssa_127
		vec1 32 ssa_129 = ffma abs(ssa_74), ssa_15, ssa_128
		vec1 32 ssa_130 = fsin ssa_129
		vec1 32 ssa_131 = ffma -ssa_124, ssa_130, ssa_16
		vec1 32 ssa_132 = frcp ssa_131
		vec1 32 ssa_133 = fmul r9, ssa_132
		vec1 32 ssa_134 = fmul r10, ssa_132
		vec1 32 ssa_135 = fmul ssa_133, ssa_133
		vec1 32 ssa_136 = ffma ssa_134, ssa_134, ssa_135
		vec1 32 ssa_137 = fsqrt ssa_136
		vec1 32 ssa_138 = load_const (0x3e4cccce /* 0.200000 */)
		vec1 32 ssa_139 = ffma -ssa_138, ssa_137, ssa_18
		r9 = fmul ssa_133, ssa_139
		r10 = fmul ssa_134, ssa_139
		vec1 32 ssa_142 = fmul ssa_121, ssa_12
		vec1 32 ssa_143 = flt ssa_142, ssa_16
		/* succs: block_3 block_4 */
		if ssa_143 {
			block block_3:
			/* preds: block_2 */
			/* succs: block_14 */
		} else {
			block block_4:
			/* preds: block_2 */
			vec1 32 ssa_144 = fmul r9, r9
			vec1 32 ssa_145 = ffma r10, r10, ssa_144
			vec1 32 ssa_146 = fadd abs(ssa_74), ssa_18
			vec1 32 ssa_147 = fmul ssa_146, ssa_17
			vec1 32 ssa_148 = fsin ssa_147
			vec1 32 ssa_149 = fmul ssa_16, ssa_148
			vec1 32 ssa_150 = ffma abs(ssa_74), ssa_15, ssa_149
			vec1 32 ssa_151 = fsin ssa_150
			vec1 32 ssa_152 = ffma -ssa_145, ssa_151, ssa_18
			vec1 32 ssa_153 = frcp ssa_152
			vec1 32 ssa_154 = fmul r9, ssa_153
			vec1 32 ssa_155 = fmul r10, ssa_153
			vec1 32 ssa_156 = fmul ssa_154, ssa_154
			vec1 32 ssa_157 = ffma ssa_155, ssa_155, ssa_156
			vec1 32 ssa_158 = fsqrt ssa_157
			vec1 32 ssa_159 = load_const (0x3e19999a /* 0.150000 */)
			vec1 32 ssa_160 = ffma -ssa_159, ssa_158, ssa_18
			r9 = fmul ssa_154, ssa_160
			r10 = fmul ssa_155, ssa_160
			vec1 32 ssa_163 = fmul ssa_121, ssa_13
			vec1 32 ssa_164 = flt ssa_163, ssa_16
			/* succs: block_5 block_6 */
			if ssa_164 {
				block block_5:
				/* preds: block_4 */
				/* succs: block_13 */
			} else {
				block block_6:
				/* preds: block_4 */
				vec1 32 ssa_165 = fmul r9, r9
				vec1 32 ssa_166 = ffma r10, r10, ssa_165
				vec1 32 ssa_167 = fadd abs(ssa_74), ssa_12
				vec1 32 ssa_168 = fmul ssa_167, ssa_17
				vec1 32 ssa_169 = fsin ssa_168
				vec1 32 ssa_170 = fmul ssa_16, ssa_169
				vec1 32 ssa_171 = ffma abs(ssa_74), ssa_15, ssa_170
				vec1 32 ssa_172 = fsin ssa_171
				vec1 32 ssa_173 = ffma -ssa_166, ssa_172, ssa_12
				vec1 32 ssa_174 = frcp ssa_173
				vec1 32 ssa_175 = fmul r9, ssa_174
				vec1 32 ssa_176 = fmul r10, ssa_174
				vec1 32 ssa_177 = fmul ssa_175, ssa_175
				vec1 32 ssa_178 = ffma ssa_176, ssa_176, ssa_177
				vec1 32 ssa_179 = fsqrt ssa_178
				vec1 32 ssa_180 = load_const (0x40200000 /* 2.500000 */)
				vec1 32 ssa_181 = load_const (0x3df5c290 /* 0.120000 */)
				vec1 32 ssa_182 = ffma -ssa_181, ssa_179, ssa_18
				r9 = fmul ssa_175, ssa_182
				r10 = fmul ssa_176, ssa_182
				vec1 32 ssa_185 = fmul ssa_121, ssa_180
				vec1 32 ssa_186 = flt ssa_185, ssa_16
				/* succs: block_7 block_8 */
				if ssa_186 {
					block block_7:
					/* preds: block_6 */
					/* succs: block_12 */
				} else {
					block block_8:
					/* preds: block_6 */
					vec1 32 ssa_187 = fmul r9, r9
					vec1 32 ssa_188 = ffma r10, r10, ssa_187
					vec1 32 ssa_189 = fadd abs(ssa_74), ssa_13
					vec1 32 ssa_190 = fmul ssa_189, ssa_17
					vec1 32 ssa_191 = fsin ssa_190
					vec1 32 ssa_192 = fmul ssa_16, ssa_191
					vec1 32 ssa_193 = ffma abs(ssa_74), ssa_15, ssa_192
					vec1 32 ssa_194 = fsin ssa_193
					vec1 32 ssa_195 = ffma -ssa_188, ssa_194, ssa_13
					vec1 32 ssa_196 = frcp ssa_195
					vec1 32 ssa_197 = fmul r9, ssa_196
					vec1 32 ssa_198 = fmul r10, ssa_196
					vec1 32 ssa_199 = fmul ssa_197, ssa_197
					vec1 32 ssa_200 = ffma ssa_198, ssa_198, ssa_199
					vec1 32 ssa_201 = fsqrt ssa_200
					vec1 32 ssa_202 = load_const (0x40400000 /* 3.000000 */)
					vec1 32 ssa_203 = load_const (0x3dccccce /* 0.100000 */)
					vec1 32 ssa_204 = ffma -ssa_203, ssa_201, ssa_18
					r9 = fmul ssa_197, ssa_204
					r10 = fmul ssa_198, ssa_204
					vec1 32 ssa_207 = fmul ssa_121, ssa_202
					vec1 32 ssa_208 = flt ssa_207, ssa_16
					/* succs: block_9 block_10 */
					if ssa_208 {
						block block_9:
						/* preds: block_8 */
						/* succs: block_11 */
					} else {
						block block_10:
						/* preds: block_8 */
						vec1 32 ssa_209 = fmul r9, r9
						vec1 32 ssa_210 = ffma r10, r10, ssa_209
						vec1 32 ssa_211 = fadd abs(ssa_74), ssa_180
						vec1 32 ssa_212 = fmul ssa_211, ssa_17
						vec1 32 ssa_213 = fsin ssa_212
						vec1 32 ssa_214 = fmul ssa_16, ssa_213
						vec1 32 ssa_215 = ffma abs(ssa_74), ssa_15, ssa_214
						vec1 32 ssa_216 = fsin ssa_215
						vec1 32 ssa_217 = ffma -ssa_210, ssa_216, ssa_180
						vec1 32 ssa_218 = frcp ssa_217
						vec1 32 ssa_219 = fmul r9, ssa_218
						vec1 32 ssa_220 = fmul r10, ssa_218
						vec1 32 ssa_221 = fmul ssa_219, ssa_219
						vec1 32 ssa_222 = ffma ssa_220, ssa_220, ssa_221
						vec1 32 ssa_223 = fsqrt ssa_222
						vec1 32 ssa_224 = load_const (0x3daf8afa /* 0.085714 */)
						vec1 32 ssa_225 = ffma -ssa_224, ssa_223, ssa_18
						r9 = fmul ssa_219, ssa_225
						r10 = fmul ssa_220, ssa_225
						/* succs: block_11 */
					}
					block block_11:
					/* preds: block_9 block_10 */
					/* succs: block_12 */
				}
				block block_12:
				/* preds: block_7 block_11 */
				/* succs: block_13 */
			}
			block block_13:
			/* preds: block_5 block_12 */
			/* succs: block_14 */
		}
		block block_14:
		/* preds: block_3 block_13 */
		/* succs: block_15 */
	}
	block block_15:
	/* preds: block_1 block_14 */
	vec1 32 ssa_238 = ffma ssa_90, ssa_98, -ssa_66.y
	vec1 32 ssa_239 = ffma ssa_88, ssa_92, -ssa_66.x
	vec1 32 ssa_240 = fmul ssa_239, ssa_239
	vec1 32 ssa_241 = ffma ssa_238, ssa_238, ssa_240
	vec1 32 ssa_242 = ffma -ssa_241, ssa_19, ssa_18
	vec1 32 ssa_243 = frcp ssa_242
	vec1 32 ssa_244 = fmul r9, ssa_243
	vec1 32 ssa_245 = fmul r10, ssa_243
	vec1 32 ssa_246 = ffma abs(ssa_74), ssa_15, ssa_21
	vec1 32 ssa_247 = fcos ssa_246
	vec1 32 ssa_248 = fsin ssa_246
	vec1 32 ssa_249 = fmul ssa_244, ssa_21
	vec1 32 ssa_250 = fmul ssa_245, ssa_21
	vec1 32 ssa_251 = fadd ssa_66.x, ssa_23
	vec1 32 ssa_252 = fadd ssa_66.y, ssa_23
	vec1 32 ssa_253 = fmul ssa_25, abs(ssa_74)
	vec1 32 ssa_254 = fcos ssa_253
	vec1 32 ssa_255 = ffma ssa_24, ssa_254, ssa_120
	vec1 32 ssa_256 = ffma -ssa_22, ssa_251, ssa_255
	vec1 32 ssa_257 = fsin ssa_253
	vec1 32 ssa_258 = ffma ssa_24, ssa_257, ssa_120
	vec1 32 ssa_259 = ffma -ssa_22, ssa_252, ssa_258
	vec1 32 ssa_260 = fmul ssa_249, ssa_247
	vec1 32 ssa_261 = ffma ssa_250, ssa_248, ssa_260
	vec1 32 ssa_262 = fmul ssa_248, ssa_249
	vec1 32 ssa_263 = ffma ssa_250, ssa_247, -ssa_262
	vec1 32 ssa_264 = ffma ssa_261, ssa_27, ssa_26
	vec1 32 ssa_265 = ffma ssa_261, ssa_28, ssa_27
	vec1 32 ssa_266 = fmul ssa_263, ssa_30
	vec1 32 ssa_267 = ffma ssa_265, ssa_29, ssa_266
	vec1 32 ssa_268 = fmul ssa_263, ssa_31
	vec1 32 ssa_269 = ffma ssa_265, ssa_30, ssa_268
	vec1 32 ssa_270 = fmul ssa_247, ssa_256
	vec1 32 ssa_271 = ffma -ssa_248, ssa_259, -ssa_270
	vec1 32 ssa_272 = fmul ssa_248, ssa_256
	vec1 32 ssa_273 = ffma -ssa_247, ssa_259, ssa_272
	vec1 32 ssa_274 = load_const (0x3b1a0223 /* 0.002350 */)
	vec1 32 ssa_275 = fmul ssa_271, ssa_27
	vec1 32 ssa_276 = ffma ssa_274, abs(ssa_74), ssa_275
	vec1 32 ssa_277 = load_const (0x3af46d4f /* 0.001865 */)
	vec1 32 ssa_278 = fmul ssa_271, ssa_28
	vec1 32 ssa_279 = ffma ssa_277, abs(ssa_74), ssa_278
	vec1 32 ssa_280 = fmul ssa_273, ssa_30
	vec1 32 ssa_281 = ffma ssa_279, ssa_29, ssa_280
	vec1 32 ssa_282 = fmul ssa_273, ssa_31
	vec1 32 ssa_283 = ffma ssa_279, ssa_30, ssa_282
	vec1 32 ssa_284 = fadd abs(ssa_74), ssa_32
	vec1 32 ssa_285 = fmul ssa_284, ssa_78
	vec1 32 ssa_286 = ffma ssa_26, ssa_285, ssa_276
	vec1 32 ssa_287 = ffma ssa_33, ssa_285, ssa_281
	vec1 32 ssa_288 = ffma ssa_34, ssa_285, ssa_283
	vec1 32 ssa_289 = fmul ssa_285, ssa_36
	vec1 32 ssa_290 = ffloor ssa_289
	vec1 32 ssa_291 = ffma -ssa_35, ssa_290, ssa_285
	vec1 32 ssa_292 = fmul ssa_291, ssa_36
	r19 = imov ssa_1
	r18 = imov r19
	r17 = imov r18
	r16 = imov r17
	r15 = imov r16
	r14 = imov r15
	r13 = imov r14
	r12 = imov ssa_37
	r11 = imov ssa_38
	/* succs: block_16 */
	loop {
		block block_16:
		/* preds: block_15 block_33 */
		vec1 32 ssa_302 = ige r19, ssa_39
		/* succs: block_17 block_18 */
		if ssa_302 {
			block block_17:
			/* preds: block_16 */
			break
			/* succs: block_34 */
		} else {
			block block_18:
			/* preds: block_16 */
			/* succs: block_19 */
		}
		block block_19:
		/* preds: block_18 */
		vec1 32 ssa_303 = fadd r12, -ssa_291
		vec1 32 ssa_304 = ffma ssa_303, ssa_264, ssa_286
		vec1 32 ssa_305 = load_const (0x3f169696 /* 0.588235 */)
		vec1 32 ssa_306 = fmul ssa_304, ssa_305
		vec1 32 ssa_307 = ffloor ssa_306
		vec1 32 ssa_308 = ffma -ssa_41, ssa_307, ssa_304
		vec1 32 ssa_309 = fadd ssa_40, -ssa_308
		r20 = fmov abs(ssa_309)
		vec1 32 ssa_311 = ffma ssa_303, ssa_267, ssa_287
		vec1 32 ssa_312 = fmul ssa_311, ssa_305
		vec1 32 ssa_313 = ffloor ssa_312
		vec1 32 ssa_314 = ffma -ssa_41, ssa_313, ssa_311
		vec1 32 ssa_315 = fadd ssa_40, -ssa_314
		r21 = fmov abs(ssa_315)
		vec1 32 ssa_317 = ffma ssa_303, ssa_269, ssa_288
		vec1 32 ssa_318 = fmul ssa_317, ssa_305
		vec1 32 ssa_319 = ffloor ssa_318
		vec1 32 ssa_320 = ffma -ssa_41, ssa_319, ssa_317
		vec1 32 ssa_321 = fadd ssa_40, -ssa_320
		r22 = fmov abs(ssa_321)
		vec1 32 ssa_323 = fadd r11, -ssa_291
		vec1 32 ssa_324 = ffma ssa_323, ssa_264, ssa_286
		vec1 32 ssa_325 = fmul ssa_324, ssa_305
		vec1 32 ssa_326 = ffloor ssa_325
		vec1 32 ssa_327 = ffma -ssa_41, ssa_326, ssa_324
		vec1 32 ssa_328 = fadd ssa_40, -ssa_327
		vec1 32 ssa_329 = ffma ssa_323, ssa_267, ssa_287
		vec1 32 ssa_330 = fmul ssa_329, ssa_305
		vec1 32 ssa_331 = ffloor ssa_330
		vec1 32 ssa_332 = ffma -ssa_41, ssa_331, ssa_329
		vec1 32 ssa_333 = fadd ssa_40, -ssa_332
		vec1 32 ssa_334 = ffma ssa_323, ssa_269, ssa_288
		vec1 32 ssa_335 = fmul ssa_334, ssa_305
		vec1 32 ssa_336 = ffloor ssa_335
		vec1 32 ssa_337 = ffma -ssa_41, ssa_336, ssa_334
		vec1 32 ssa_338 = fadd ssa_40, -ssa_337
		vec1 32 ssa_339 = fsin abs(ssa_74)
		vec1 32 ssa_340 = fmul ssa_339, ssa_44
		vec1 32 ssa_341 = ffract ssa_340
		vec1 32 ssa_342 = fadd ssa_43, ssa_341
		vec1 32 ssa_343 = flog2 ssa_342
		vec1 32 ssa_344 = fmul ssa_343, ssa_45
		vec1 32 ssa_345 = fadd ssa_42, ssa_344
		vec1 32 ssa_346 = fmul abs(ssa_328), abs(ssa_328)
		vec1 32 ssa_347 = ffma abs(ssa_333), abs(ssa_333), ssa_346
		vec1 32 ssa_348 = ffma abs(ssa_338), abs(ssa_338), ssa_347
		vec1 32 ssa_349 = fadd ssa_18, -ssa_348
		vec1 32 ssa_350 = frcp ssa_349
		vec1 32 ssa_351 = ffma abs(ssa_328), ssa_350, ssa_23
		vec1 32 ssa_352 = ffma abs(ssa_74), ssa_47, ssa_13
		vec1 32 ssa_353 = fsin ssa_352
		vec1 32 ssa_354 = ffma ssa_15, ssa_353, ssa_46
		vec1 32 ssa_355 = ffma abs(ssa_333), ssa_350, ssa_354
		vec1 32 ssa_356 = fmul abs(ssa_74), ssa_19
		vec1 32 ssa_357 = fcos ssa_356
		vec1 32 ssa_358 = ffma ssa_19, ssa_357, ssa_48
		vec1 32 ssa_359 = ffma abs(ssa_338), ssa_350, ssa_358
		vec1 32 ssa_360 = fpow abs(ssa_349), ssa_49
		vec1 32 ssa_361 = fmul ssa_345, ssa_360
		vec1 32 ssa_362 = fmul ssa_361, ssa_50
		vec1 32 ssa_363 = fexp2 -ssa_362
		vec1 32 ssa_364 = fmul ssa_351, ssa_351
		vec1 32 ssa_365 = ffma ssa_355, ssa_355, ssa_364
		vec1 32 ssa_366 = ffma ssa_359, ssa_359, ssa_365
		vec1 32 ssa_367 = fadd ssa_18, -ssa_366
		vec1 32 ssa_368 = frcp ssa_367
		vec1 32 ssa_369 = ffma abs(ssa_351), ssa_368, ssa_23
		vec1 32 ssa_370 = ffma abs(ssa_355), ssa_368, ssa_354
		vec1 32 ssa_371 = ffma abs(ssa_359), ssa_368, ssa_358
		vec1 32 ssa_372 = load_const (0xbe530bb2 /* -0.206099 */)
		vec1 32 ssa_373 = fadd ssa_367, -ssa_349
		vec1 32 ssa_374 = fpow abs(ssa_373), ssa_49
		vec1 32 ssa_375 = fmul ssa_345, ssa_374
		vec1 32 ssa_376 = ffma -ssa_375, ssa_50, ssa_372
		vec1 32 ssa_377 = fexp2 ssa_376
		vec1 32 ssa_378 = fadd ssa_363, ssa_377
		vec1 32 ssa_379 = fmul ssa_369, ssa_369
		vec1 32 ssa_380 = ffma ssa_370, ssa_370, ssa_379
		vec1 32 ssa_381 = ffma ssa_371, ssa_371, ssa_380
		vec1 32 ssa_382 = fadd ssa_18, -ssa_381
		vec1 32 ssa_383 = frcp ssa_382
		vec1 32 ssa_384 = ffma abs(ssa_369), ssa_383, ssa_23
		vec1 32 ssa_385 = ffma abs(ssa_370), ssa_383, ssa_354
		vec1 32 ssa_386 = ffma abs(ssa_371), ssa_383, ssa_358
		vec1 32 ssa_387 = load_const (0xbed30bb2 /* -0.412199 */)
		vec1 32 ssa_388 = fadd ssa_382, -ssa_367
		vec1 32 ssa_389 = fpow abs(ssa_388), ssa_49
		vec1 32 ssa_390 = fmul ssa_345, ssa_389
		vec1 32 ssa_391 = ffma -ssa_390, ssa_50, ssa_387
		vec1 32 ssa_392 = fexp2 ssa_391
		vec1 32 ssa_393 = fadd ssa_378, ssa_392
		vec1 32 ssa_394 = fmul ssa_384, ssa_384
		vec1 32 ssa_395 = ffma ssa_385, ssa_385, ssa_394
		vec1 32 ssa_396 = ffma ssa_386, ssa_386, ssa_395
		vec1 32 ssa_397 = fadd ssa_18, -ssa_396
		vec1 32 ssa_398 = frcp ssa_397
		vec1 32 ssa_399 = ffma abs(ssa_384), ssa_398, ssa_23
		vec1 32 ssa_400 = ffma abs(ssa_385), ssa_398, ssa_354
		vec1 32 ssa_401 = ffma abs(ssa_386), ssa_398, ssa_358
		vec1 32 ssa_402 = load_const (0xbf1e48c6 /* -0.618298 */)
		vec1 32 ssa_403 = fadd ssa_397, -ssa_382
		vec1 32 ssa_404 = fpow abs(ssa_403), ssa_49
		vec1 32 ssa_405 = fmul ssa_345, ssa_404
		vec1 32 ssa_406 = ffma -ssa_405, ssa_50, ssa_402
		vec1 32 ssa_407 = fexp2 ssa_406
		vec1 32 ssa_408 = fadd ssa_393, ssa_407
		vec1 32 ssa_409 = fmul ssa_399, ssa_399
		vec1 32 ssa_410 = ffma ssa_400, ssa_400, ssa_409
		vec1 32 ssa_411 = ffma ssa_401, ssa_401, ssa_410
		vec1 32 ssa_412 = fadd ssa_18, -ssa_411
		vec1 32 ssa_413 = frcp ssa_412
		vec1 32 ssa_414 = ffma abs(ssa_399), ssa_413, ssa_23
		vec1 32 ssa_415 = ffma abs(ssa_400), ssa_413, ssa_354
		vec1 32 ssa_416 = ffma abs(ssa_401), ssa_413, ssa_358
		vec1 32 ssa_417 = load_const (0xbf530bb2 /* -0.824397 */)
		vec1 32 ssa_418 = fadd ssa_412, -ssa_397
		vec1 32 ssa_419 = fpow abs(ssa_418), ssa_49
		vec1 32 ssa_420 = fmul ssa_345, ssa_419
		vec1 32 ssa_421 = ffma -ssa_420, ssa_50, ssa_417
		vec1 32 ssa_422 = fexp2 ssa_421
		vec1 32 ssa_423 = fadd ssa_408, ssa_422
		vec1 32 ssa_424 = fmul ssa_414, ssa_414
		vec1 32 ssa_425 = ffma ssa_415, ssa_415, ssa_424
		vec1 32 ssa_426 = ffma ssa_416, ssa_416, ssa_425
		vec1 32 ssa_427 = fadd ssa_18, -ssa_426
		vec1 32 ssa_428 = load_const (0xbf83e74f /* -1.030496 */)
		vec1 32 ssa_429 = fadd ssa_427, -ssa_412
		vec1 32 ssa_430 = fpow abs(ssa_429), ssa_49
		vec1 32 ssa_431 = fmul ssa_345, ssa_430
		vec1 32 ssa_432 = ffma -ssa_431, ssa_50, ssa_428
		vec1 32 ssa_433 = fexp2 ssa_432
		vec1 32 ssa_434 = fadd ssa_423, ssa_433
		vec1 32 ssa_435 = load_const (0x3f94025f /* 1.156322 */)
		vec1 32 ssa_436 = fmul ssa_435, ssa_434
		vec1 32 ssa_437 = fadd ssa_436, ssa_52
		vec1 32 ssa_438 = fmax ssa_1, ssa_437
		r25 = imov ssa_1
		r24 = imov r25
		r23 = imov r24
		/* succs: block_20 */
		loop {
			block block_20:
			/* preds: block_19 block_26 */
			vec1 32 ssa_445 = ige r25, ssa_53
			/* succs: block_21 block_22 */
			if ssa_445 {
				block block_21:
				/* preds: block_20 */
				break
				/* succs: block_27 */
			} else {
				block block_22:
				/* preds: block_20 */
				/* succs: block_23 */
			}
			block block_23:
			/* preds: block_22 */
			vec1 32 ssa_446 = fmul r20, r20
			vec1 32 ssa_447 = ffma r21, r21, ssa_446
			vec1 32 ssa_448 = ffma r22, r22, ssa_447
			vec1 32 ssa_449 = frcp ssa_448
			r20 = ffma abs(r20), ssa_449, ssa_54
			r21 = ffma abs(r21), ssa_449, ssa_54
			r22 = ffma abs(r22), ssa_449, ssa_54
			vec1 32 ssa_453 = fmul r20, r20
			vec1 32 ssa_454 = ffma r21, r21, ssa_453
			vec1 32 ssa_455 = ffma r22, r22, ssa_454
			r26 = fsqrt ssa_455
			vec1 32 ssa_457 = fadd r26, -r24
			r27 = fmov abs(ssa_457)
			vec1 32 ssa_459 = ilt ssa_55, r25
			/* succs: block_24 block_25 */
			if ssa_459 {
				block block_24:
				/* preds: block_23 */
				r27 = fmin ssa_56, abs(ssa_457)
				/* succs: block_26 */
			} else {
				block block_25:
				/* preds: block_23 */
				/* succs: block_26 */
			}
			block block_26:
			/* preds: block_24 block_25 */
			r23 = fadd r23, r27
			r25 = iadd r25, ssa_51
			r24 = imov r26
			/* succs: block_20 */
		}
		block block_27:
		/* preds: block_21 */
		vec1 32 ssa_464 = fmul r23, r23
		vec1 32 ssa_465 = fmul r23, ssa_464
		vec1 32 ssa_466 = i2f r19
		vec1 32 ssa_467 = fadd ssa_466, -ssa_292
		vec1 32 ssa_468 = fmax ssa_1, ssa_467
		r28 = fpow ssa_57, ssa_468
		vec1 32 ssa_470 = fadd r13, r28
		vec1 32 ssa_471 = fadd r14, r28
		vec1 32 ssa_472 = fadd r15, r28
		vec1 32 ssa_473 = ieq r19, ssa_1
		/* succs: block_28 block_29 */
		if ssa_473 {
			block block_28:
			/* preds: block_27 */
			vec1 32 ssa_474 = fadd ssa_18, -ssa_292
			r28 = fmul r28, ssa_474
			/* succs: block_30 */
		} else {
			block block_29:
			/* preds: block_27 */
			/* succs: block_30 */
		}
		block block_30:
		/* preds: block_28 block_29 */
		vec1 32 ssa_477 = ieq r19, ssa_58
		/* succs: block_31 block_32 */
		if ssa_477 {
			block block_31:
			/* preds: block_30 */
			r28 = fmul r28, ssa_292
			/* succs: block_33 */
		} else {
			block block_32:
			/* preds: block_30 */
			/* succs: block_33 */
		}
		block block_33:
		/* preds: block_31 block_32 */
		vec1 32 ssa_480 = fmul ssa_59, r28
		vec1 32 ssa_481 = fmul ssa_303, ssa_465
		r13 = ffma ssa_481, ssa_480, ssa_470
		vec1 32 ssa_483 = fmul ssa_303, ssa_303
		vec1 32 ssa_484 = fmul ssa_465, ssa_480
		r14 = ffma ssa_483, ssa_484, ssa_471
		vec1 32 ssa_486 = fmul ssa_483, ssa_483
		r15 = ffma ssa_486, ssa_484, ssa_472
		vec1 32 ssa_488 = fmul ssa_60, ssa_438
		vec1 32 ssa_489 = fmul ssa_438, r28
		r17 = ffma ssa_488, ssa_489, r17
		r18 = fadd r18, ssa_489
		vec1 32 ssa_492 = fmul ssa_24, ssa_438
		vec1 32 ssa_493 = fmul ssa_438, ssa_438
		vec1 32 ssa_494 = fmul ssa_493, r28
		r16 = ffma ssa_492, ssa_494, r16
		r12 = fadd r12, ssa_35
		r11 = fadd r11, ssa_35
		r19 = iadd r19, ssa_51
		/* succs: block_16 */
	}
	block block_34:
	/* preds: block_17 */
	vec1 32 ssa_499 = fmul r13, r13
	vec1 32 ssa_500 = ffma r14, r14, ssa_499
	vec1 32 ssa_501 = ffma r15, r15, ssa_500
	vec1 32 ssa_502 = fsqrt ssa_501
	vec1 32 ssa_503 = flrp ssa_502, r13, ssa_61
	vec1 32 ssa_504 = flrp ssa_502, r14, ssa_61
	vec1 32 ssa_505 = flrp ssa_502, r15, ssa_61
	vec1 32 ssa_506 = fsin abs(ssa_74)
	vec1 32 ssa_507 = fmul ssa_62, ssa_506
	vec1 32 ssa_508 = fmul r16, ssa_507
	vec1 32 ssa_509 = fmul r17, ssa_507
	vec1 32 ssa_510 = fmul r18, ssa_507
	vec1 32 ssa_511 = fmul ssa_510, ssa_24
	vec1 32 ssa_512 = fmul ssa_508, ssa_17
	vec1 32 ssa_513 = flrp ssa_509, ssa_511, ssa_63
	vec1 32 ssa_514 = fmul ssa_16, ssa_513
	vec1 32 ssa_515 = fadd ssa_254, ssa_18
	vec1 32 ssa_516 = fmul ssa_16, ssa_515
	vec1 32 ssa_517 = fmul ssa_514, ssa_516
	vec1 32 ssa_518 = fadd ssa_18, -ssa_516
	vec1 32 ssa_519 = fmul ssa_514, ssa_518
	vec1 32 ssa_520 = ffma ssa_503, ssa_25, ssa_512
	vec1 32 ssa_521 = fmin.sat ssa_520, ssa_16
	vec1 32 ssa_522 = fmul ssa_521, ssa_13
	vec1 32 ssa_523 = ffma ssa_504, ssa_25, ssa_519
	vec1 32 ssa_524 = fmin.sat ssa_523, ssa_16
	vec1 32 ssa_525 = fmul ssa_524, ssa_13
	vec1 32 ssa_526 = ffma ssa_505, ssa_25, ssa_517
	vec1 32 ssa_527 = fmin.sat ssa_526, ssa_16
	vec1 32 ssa_528 = fmul ssa_527, ssa_13
	vec4 32 ssa_529 = vec4 ssa_522, ssa_525, ssa_528, ssa_18
	intrinsic store_output (ssa_529, ssa_1) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

Native code for unnamed fragment shader GLSL1
SIMD8 shader: 506 instructions. 2 loops. 35252 cycles. 0:0 spills:fills. Promoted 38 constants. Compacted 8096 to 7168 bytes (11%)
   START B0 (384 cycles)
add(16)         g8<1>UW         g1.4<1,4,0>UW   0x11001010V     { align1 WE_all 1H };
mov(8)          g31<1>D         1075000115D                     { align1 1Q };
mov(8)          g32<1>D         1061326684D                     { align1 1Q };
mul(8)          g33<1>F         g4<0,1,0>F      0.0001F         { align1 1Q };
mov(1)          g2<1>F          0.021F                          { align1 WE_all 1N };
mul(8)          g38<1>F         g4<0,1,0>F      0.002F          { align1 1Q };
mov(8)          g100<1>F        g4.3<0,1,0>F                    { align1 1Q };
mov(8)          g46<1>F         g4.4<0,1,0>F                    { align1 1Q };
sel.ge(8)       g47<1>F         g4.3<0,1,0>F    g4.4<0,1,0>F    { align1 1Q };
mov(8)          g9<1>F          g8<8,4,1>UW                     { align1 1Q };
mov(8)          g10<1>F         g8.4<8,4,1>UW                   { align1 1Q };
mad(8)          g34<1>F         g4.1<0,1,0>F    g2.0<0,1,0>F    g4.0<0,1,0>F { align16 1Q };
mov(1)          g2.1<1>F        1F                              { align1 WE_all 1N };
math sin(8)     g39<1>F         g38<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g57<1>F         g100<8,8,1>F    null<8,8,1>F    { align1 1Q };
math inv(8)     g63<1>F         g46<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g48<1>F         g47<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g53<1>F         g9<8,8,1>F      0.5F            { align1 1Q };
add(8)          g54<1>F         g10<8,8,1>F     0.5F            { align1 1Q };
math sin(8)     g35<1>F         g34<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g40<1>F         g39<8,8,1>F     121F            { align1 1Q };
mul(8)          g56<1>F         g53<8,8,1>F     2F              { align1 1Q };
mad(8)          g55<1>F         g4.6<0,1,0>F    g4.5<0,1,0>F    g54<4,4,1>F { align16 1Q };
mul(8)          g36<1>F         g33<8,8,1>F     (abs)g35<8,8,1>F { align1 1Q };
mad(8)          g58<1>F         -g2.1<0,1,0>F   g57<4,4,1>F     g56<4,4,1>F { align16 1Q };
mul(8)          g62<1>F         g55<8,8,1>F     2F              { align1 1Q };
math sin(8)     g37<1>F         g36<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g59<1>F         g58<8,8,1>F     g4.3<0,1,0>F    { align1 1Q compacted };
mad(8)          g64<1>F         -g2.1<0,1,0>F   g63<4,4,1>F     g62<4,4,1>F { align16 1Q };
mov(1)          g2.3<1>F        0.1F                            { align1 WE_all 1N };
mad(8)          g41<1>F         g40<4,4,1>F     g4.0<0,1,0>F    g37<4,4,1>F { align16 1Q };
mul(8)          g60<1>F         g59<8,8,1>F     g48<8,8,1>F     { align1 1Q compacted };
mul(8)          g65<1>F         g64<8,8,1>F     g4.4<0,1,0>F    { align1 1Q compacted };
mul(8)          g42<1>F         (abs)g41<8,8,1>F 0.02F          { align1 1Q };
mul(8)          g49<1>F         (abs)g41<8,8,1>F 1.5F           { align1 1Q };
mul(8)          g70<1>F         (abs)g41<8,8,1>F 0.05F          { align1 1Q };
mul(8)          g84<1>F         (abs)g41<8,8,1>F 0.001F         { align1 1Q };
mul(8)          g66<1>F         g65<8,8,1>F     g48<8,8,1>F     { align1 1Q compacted };
add(8)          g43<1>F         g42<8,8,1>F     0.785398F       { align1 1Q };
math sin(8)     g50<1>F         g49<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g71<1>F         g70<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g85<1>F         g84<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g44<1>F         g43<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g51<1>F         g50<8,8,1>F     1.1F            { align1 1Q };
mul(8)          g72<1>F         g71<8,8,1>F     0.5F            { align1 1Q };
cmp.l.f0(8)     null<1>F        g85<8,8,1>F     0.5F            { align1 1Q };
mul(8)          g45<1>F         g44<8,8,1>F     0.005F          { align1 1Q };
add(8)          g52<1>F         g51<8,8,1>F     10F             { align1 1Q };
mad(8)          g73<1>F         g72<4,4,1>F     g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
mov(1)          g2.4<1>F        0.3F                            { align1 WE_all 1N };
mul(8)          g61<1>F         g60<8,8,1>F     g52<8,8,1>F     { align1 1Q compacted };
mul(8)          g67<1>F         g66<8,8,1>F     g52<8,8,1>F     { align1 1Q compacted };
math sin(8)     g74<1>F         g73<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g68<1>F         g61<8,8,1>F     g61<8,8,1>F     { align1 1Q compacted };
mad(8)          g69<1>F         g68<4,4,1>F     g67<4,4,1>F     g67<4,4,1>F { align16 1Q };
mul(8)          g75<1>F         g69<8,8,1>F     g74<8,8,1>F     { align1 1Q compacted };
mov(8)          g77<1>F         -g75<8,8,1>F                    { align1 1Q };
math inv(8)     g76<1>F         g77<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g78<1>F         g61<8,8,1>F     g76<8,8,1>F     { align1 1Q compacted };
mul(8)          g79<1>F         g67<8,8,1>F     g76<8,8,1>F     { align1 1Q compacted };
mul(8)          g80<1>F         g78<8,8,1>F     g78<8,8,1>F     { align1 1Q compacted };
mad(8)          g81<1>F         g80<4,4,1>F     g79<4,4,1>F     g79<4,4,1>F { align16 1Q };
math sqrt(8)    g82<1>F         g81<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g83<1>F         g2.1<0,1,0>F    g2.4<0,1,0>F    -g82<4,4,1>F { align16 1Q };
mov(1)          g2.2<1>F        2F                              { align1 WE_all 1N };
mov(1)          g2.5<1>F        0.5F                            { align1 WE_all 1N };
mul(8)          g11<1>F         g78<8,8,1>F     g83<8,8,1>F     { align1 1Q compacted };
mul(8)          g12<1>F         g79<8,8,1>F     g83<8,8,1>F     { align1 1Q compacted };
(-f0) if(8)     JIP: 198                                        { align1 1Q };
   END B0 ->B1 ->B10
   START B1 <-B0 (240 cycles)
mul(8)          g86<1>F         g11<8,8,1>F     g11<8,8,1>F     { align1 1Q compacted };
add(8)          g88<1>F         (abs)g41<8,8,1>F 0.5F           { align1 1Q };
mul(8)          g102<1>F        g85<8,8,1>F     1.5F            { align1 1Q };
mad(8)          g87<1>F         g86<4,4,1>F     g12<4,4,1>F     g12<4,4,1>F { align16 1Q };
mul(8)          g89<1>F         g88<8,8,1>F     0.05F           { align1 1Q };
cmp.l.f0(8)     null<1>F        g102<8,8,1>F    0.5F            { align1 1Q };
math sin(8)     g90<1>F         g89<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g91<1>F         g90<8,8,1>F     0.5F            { align1 1Q };
mad(8)          g92<1>F         g91<4,4,1>F     g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
math sin(8)     g93<1>F         g92<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g94<1>F         g2.5<0,1,0>F    g93<4,4,1>F     -g87<4,4,1>F { align16 1Q };
mov(1)          g2.6<1>F        0.2F                            { align1 WE_all 1N };
math inv(8)     g95<1>F         g94<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g96<1>F         g11<8,8,1>F     g95<8,8,1>F     { align1 1Q compacted };
mul(8)          g97<1>F         g12<8,8,1>F     g95<8,8,1>F     { align1 1Q compacted };
mul(8)          g98<1>F         g96<8,8,1>F     g96<8,8,1>F     { align1 1Q compacted };
mad(8)          g99<1>F         g98<4,4,1>F     g97<4,4,1>F     g97<4,4,1>F { align16 1Q };
math sqrt(8)    g100<1>F        g99<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g101<1>F        g2.1<0,1,0>F    g100<4,4,1>F    -g2.6<0,1,0>F { align16 1Q };
mul(8)          g11<1>F         g96<8,8,1>F     g101<8,8,1>F    { align1 1Q compacted };
mul(8)          g12<1>F         g97<8,8,1>F     g101<8,8,1>F    { align1 1Q compacted };
(-f0) if(8)     JIP: 158                                        { align1 1Q };
   END B1 ->B2 ->B9
   START B2 <-B1 (240 cycles)
mul(8)          g103<1>F        g11<8,8,1>F     g11<8,8,1>F     { align1 1Q compacted };
add(8)          g105<1>F        (abs)g41<8,8,1>F 1F             { align1 1Q };
mul(8)          g119<1>F        g85<8,8,1>F     2F              { align1 1Q };
mad(8)          g104<1>F        g103<4,4,1>F    g12<4,4,1>F     g12<4,4,1>F { align16 1Q };
mul(8)          g106<1>F        g105<8,8,1>F    0.05F           { align1 1Q };
cmp.l.f0(8)     null<1>F        g119<8,8,1>F    0.5F            { align1 1Q };
math sin(8)     g107<1>F        g106<8,8,1>F    null<8,8,1>F    { align1 1Q };
mul(8)          g108<1>F        g107<8,8,1>F    0.5F            { align1 1Q };
mad(8)          g109<1>F        g108<4,4,1>F    g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
math sin(8)     g110<1>F        g109<8,8,1>F    null<8,8,1>F    { align1 1Q };
mad(8)          g111<1>F        g2.1<0,1,0>F    g110<4,4,1>F    -g104<4,4,1>F { align16 1Q };
mov(1)          g2.7<1>F        0.15F                           { align1 WE_all 1N };
math inv(8)     g112<1>F        g111<8,8,1>F    null<8,8,1>F    { align1 1Q };
mul(8)          g113<1>F        g11<8,8,1>F     g112<8,8,1>F    { align1 1Q compacted };
mul(8)          g114<1>F        g12<8,8,1>F     g112<8,8,1>F    { align1 1Q compacted };
mul(8)          g115<1>F        g113<8,8,1>F    g113<8,8,1>F    { align1 1Q compacted };
mad(8)          g116<1>F        g115<4,4,1>F    g114<4,4,1>F    g114<4,4,1>F { align16 1Q };
math sqrt(8)    g117<1>F        g116<8,8,1>F    null<8,8,1>F    { align1 1Q };
mad(8)          g118<1>F        g2.1<0,1,0>F    g117<4,4,1>F    -g2.7<0,1,0>F { align16 1Q };
mul(8)          g11<1>F         g113<8,8,1>F    g118<8,8,1>F    { align1 1Q compacted };
mul(8)          g12<1>F         g114<8,8,1>F    g118<8,8,1>F    { align1 1Q compacted };
(-f0) if(8)     JIP: 118                                        { align1 1Q };
   END B2 ->B3 ->B8
   START B3 <-B2 (240 cycles)
mul(8)          g120<1>F        g11<8,8,1>F     g11<8,8,1>F     { align1 1Q compacted };
add(8)          g122<1>F        (abs)g41<8,8,1>F 1.5F           { align1 1Q };
mov(1)          g3<1>F          1.5F                            { align1 WE_all 1N };
mul(8)          g18<1>F         g85<8,8,1>F     2.5F            { align1 1Q };
mad(8)          g121<1>F        g120<4,4,1>F    g12<4,4,1>F     g12<4,4,1>F { align16 1Q };
mul(8)          g123<1>F        g122<8,8,1>F    0.05F           { align1 1Q };
cmp.l.f0(8)     null<1>F        g18<8,8,1>F     0.5F            { align1 1Q };
math sin(8)     g124<1>F        g123<8,8,1>F    null<8,8,1>F    { align1 1Q };
mul(8)          g125<1>F        g124<8,8,1>F    0.5F            { align1 1Q };
mad(8)          g126<1>F        g125<4,4,1>F    g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
math sin(8)     g127<1>F        g126<8,8,1>F    null<8,8,1>F    { align1 1Q };
mad(8)          g8<1>F          g3.0<0,1,0>F    g127<4,4,1>F    -g121<4,4,1>F { align16 1Q };
mov(1)          g3.1<1>F        0.12F                           { align1 WE_all 1N };
math inv(8)     g9<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 1Q };
mul(8)          g10<1>F         g11<8,8,1>F     g9<8,8,1>F      { align1 1Q compacted };
mul(8)          g13<1>F         g12<8,8,1>F     g9<8,8,1>F      { align1 1Q compacted };
mul(8)          g14<1>F         g10<8,8,1>F     g10<8,8,1>F     { align1 1Q compacted };
mad(8)          g15<1>F         g14<4,4,1>F     g13<4,4,1>F     g13<4,4,1>F { align16 1Q };
math sqrt(8)    g16<1>F         g15<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g17<1>F         g2.1<0,1,0>F    g16<4,4,1>F     -g3.1<0,1,0>F { align16 1Q };
mul(8)          g11<1>F         g10<8,8,1>F     g17<8,8,1>F     { align1 1Q compacted };
mul(8)          g12<1>F         g13<8,8,1>F     g17<8,8,1>F     { align1 1Q compacted };
(-f0) if(8)     JIP: 76                                         { align1 1Q };
   END B3 ->B4 ->B7
   START B4 <-B3 (240 cycles)
mul(8)          g19<1>F         g11<8,8,1>F     g11<8,8,1>F     { align1 1Q compacted };
add(8)          g21<1>F         (abs)g41<8,8,1>F 2F             { align1 1Q };
mov(1)          g3.2<1>F        0.1F                            { align1 WE_all 1N };
mul(8)          g37<1>F         g85<8,8,1>F     3F              { align1 1Q };
mad(8)          g20<1>F         g19<4,4,1>F     g12<4,4,1>F     g12<4,4,1>F { align16 1Q };
mul(8)          g22<1>F         g21<8,8,1>F     0.05F           { align1 1Q };
cmp.l.f0(8)     null<1>F        g37<8,8,1>F     0.5F            { align1 1Q };
math sin(8)     g23<1>F         g22<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g24<1>F         g23<8,8,1>F     0.5F            { align1 1Q };
mad(8)          g25<1>F         g24<4,4,1>F     g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
math sin(8)     g26<1>F         g25<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g27<1>F         g2.2<0,1,0>F    g26<4,4,1>F     -g20<4,4,1>F { align16 1Q };
math inv(8)     g28<1>F         g27<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g29<1>F         g11<8,8,1>F     g28<8,8,1>F     { align1 1Q compacted };
mul(8)          g30<1>F         g12<8,8,1>F     g28<8,8,1>F     { align1 1Q compacted };
mul(8)          g33<1>F         g29<8,8,1>F     g29<8,8,1>F     { align1 1Q compacted };
mad(8)          g34<1>F         g33<4,4,1>F     g30<4,4,1>F     g30<4,4,1>F { align16 1Q };
math sqrt(8)    g35<1>F         g34<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g36<1>F         g2.1<0,1,0>F    g35<4,4,1>F     -g3.2<0,1,0>F { align16 1Q };
mul(8)          g11<1>F         g29<8,8,1>F     g36<8,8,1>F     { align1 1Q compacted };
mul(8)          g12<1>F         g30<8,8,1>F     g36<8,8,1>F     { align1 1Q compacted };
(-f0) if(8)     JIP: 36                                         { align1 1Q };
   END B4 ->B5 ->B6
   START B5 <-B4 (238 cycles)
mul(8)          g38<1>F         g11<8,8,1>F     g11<8,8,1>F     { align1 1Q compacted };
add(8)          g40<1>F         (abs)g41<8,8,1>F 2.5F           { align1 1Q };
mov(1)          g3.3<1>F        2.5F                            { align1 WE_all 1N };
mad(8)          g39<1>F         g38<4,4,1>F     g12<4,4,1>F     g12<4,4,1>F { align16 1Q };
mul(8)          g42<1>F         g40<8,8,1>F     0.05F           { align1 1Q };
math sin(8)     g43<1>F         g42<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g44<1>F         g43<8,8,1>F     0.5F            { align1 1Q };
mad(8)          g46<1>F         g44<4,4,1>F     g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
math sin(8)     g47<1>F         g46<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g48<1>F         g3.3<0,1,0>F    g47<4,4,1>F     -g39<4,4,1>F { align16 1Q };
mov(1)          g3.4<1>F        0.0857143F                      { align1 WE_all 1N };
math inv(8)     g49<1>F         g48<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g50<1>F         g11<8,8,1>F     g49<8,8,1>F     { align1 1Q compacted };
mul(8)          g51<1>F         g12<8,8,1>F     g49<8,8,1>F     { align1 1Q compacted };
mul(8)          g52<1>F         g50<8,8,1>F     g50<8,8,1>F     { align1 1Q compacted };
mad(8)          g54<1>F         g52<4,4,1>F     g51<4,4,1>F     g51<4,4,1>F { align16 1Q };
math sqrt(8)    g56<1>F         g54<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g58<1>F         g2.1<0,1,0>F    g56<4,4,1>F     -g3.4<0,1,0>F { align16 1Q };
mul(8)          g11<1>F         g50<8,8,1>F     g58<8,8,1>F     { align1 1Q compacted };
mul(8)          g12<1>F         g51<8,8,1>F     g58<8,8,1>F     { align1 1Q compacted };
   END B5 ->B6
   START B6 <-B5 <-B4 (2 cycles)
endif(8)        JIP: 2                                          { align1 1Q };
   END B6 ->B7
   START B7 <-B6 <-B3 (2 cycles)
endif(8)        JIP: 2                                          { align1 1Q };
   END B7 ->B8
   START B8 <-B7 <-B2 (2 cycles)
endif(8)        JIP: 2                                          { align1 1Q };
   END B8 ->B9
   START B9 <-B8 <-B1 (2 cycles)
endif(8)        JIP: 2                                          { align1 1Q };
   END B9 ->B10
   START B10 <-B9 <-B0 (326 cycles)
endif(8)        JIP: 2                                          { align1 1Q };
mad(8)          g59<1>F         -g4.2<0,1,0>F   g63<4,4,1>F     g55<4,4,1>F { align16 1Q };
mad(8)          g60<1>F         -g4.1<0,1,0>F   g57<4,4,1>F     g53<4,4,1>F { align16 1Q };
mov(1)          g3.5<1>F        0.9F                            { align1 WE_all 1N };
add(8)          g72<1>F         g4.1<0,1,0>F    -0.5F           { align1 1Q };
add(8)          g73<1>F         g4.2<0,1,0>F    -0.5F           { align1 1Q };
mul(8)          g74<1>F         (abs)g41<8,8,1>F 0.01F          { align1 1Q };
mov(1)          g5<1>F          0.62161F                        { align1 WE_all 1N };
add(8)          g103<1>F        (abs)g41<8,8,1>F -3311F         { align1 1Q };
mov(1)          g6<1>F          0.0109F                         { align1 WE_all 1N };
mov(8)          g21<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g20<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g19<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g18<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g17<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g16<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g15<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g14<1>D         1047904911D                     { align1 1Q };
mov(8)          g13<1>D         1048270654D                     { align1 1Q };
mad(8)          g67<1>F         g3.5<0,1,0>F    g2.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
mul(8)          g61<1>F         g60<8,8,1>F     g60<8,8,1>F     { align1 1Q compacted };
math cos(8)     g75<1>F         g74<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g78<1>F         g74<8,8,1>F     null<8,8,1>F    { align1 1Q };
mov(1)          g5.5<1>F        0.783327F                       { align1 WE_all 1N };
mul(8)          g104<1>F        g103<8,8,1>F    g45<8,8,1>F     { align1 1Q compacted };
mov(1)          g3.6<1>F        1.8F                            { align1 WE_all 1N };
mad(8)          g62<1>F         g61<4,4,1>F     g59<4,4,1>F     g59<4,4,1>F { align16 1Q };
math cos(8)     g68<1>F         g67<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g69<1>F         g67<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g108<1>F        g104<8,8,1>F    91.7431F        { align1 1Q };
mad(8)          g76<1>F         g84<4,4,1>F     g75<4,4,1>F     g3.6<0,1,0>F { align16 1Q };
mov(1)          g3.7<1>F        5F                              { align1 WE_all 1N };
mad(8)          g63<1>F         g2.1<0,1,0>F    g2.4<0,1,0>F    -g62<4,4,1>F { align16 1Q };
rndd(8)         g109<1>F        g108<8,8,1>F                    { align1 1Q };
mad(8)          g79<1>F         g84<4,4,1>F     g78<4,4,1>F     g3.6<0,1,0>F { align16 1Q };
mad(8)          g77<1>F         g76<4,4,1>F     g72<4,4,1>F     -g3.7<0,1,0>F { align16 1Q };
mad(8)          g110<1>F        g104<4,4,1>F    g109<4,4,1>F    -g6.0<0,1,0>F { align16 1Q };
math inv(8)     g64<1>F         g63<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g80<1>F         g79<4,4,1>F     g73<4,4,1>F     -g3.7<0,1,0>F { align16 1Q };
mul(8)          g91<1>F         g68<8,8,1>F     g77<8,8,1>F     { align1 1Q compacted };
mul(8)          g93<1>F         g69<8,8,1>F     g77<8,8,1>F     { align1 1Q compacted };
mul(8)          g65<1>F         g11<8,8,1>F     g64<8,8,1>F     { align1 1Q compacted };
mul(8)          g66<1>F         g12<8,8,1>F     g64<8,8,1>F     { align1 1Q compacted };
mul(8)          g111<1>F        g110<8,8,1>F    91.7431F        { align1 1Q };
mad(8)          g94<1>F         g93<4,4,1>F     g80<4,4,1>F     -g68<4,4,1>F { align16 1Q };
mad(8)          g92<1>F         -g91<4,4,1>F    g80<4,4,1>F     -g69<4,4,1>F { align16 1Q };
mul(8)          g70<1>F         g65<8,8,1>F     0.9F            { align1 1Q };
mul(8)          g71<1>F         g66<8,8,1>F     0.9F            { align1 1Q };
mul(8)          g99<1>F         g94<8,8,1>F     0.825336F       { align1 1Q };
mul(8)          g101<1>F        g94<8,8,1>F     0.564642F       { align1 1Q };
mul(8)          g95<1>F         g92<8,8,1>F     0.62161F        { align1 1Q };
mul(8)          g97<1>F         g92<8,8,1>F     -0.783327F      { align1 1Q };
mul(8)          g81<1>F         g70<8,8,1>F     g68<8,8,1>F     { align1 1Q compacted };
mul(8)          g83<1>F         g69<8,8,1>F     g70<8,8,1>F     { align1 1Q compacted };
mad(8)          g82<1>F         g81<4,4,1>F     g69<4,4,1>F     g71<4,4,1>F { align16 1Q };
mad(8)          g84<1>F         -g83<4,4,1>F    g68<4,4,1>F     g71<4,4,1>F { align16 1Q };
mad(8)          g85<1>F         g5.5<0,1,0>F    g5.0<0,1,0>F    g82<4,4,1>F { align16 1Q };
mad(8)          g86<1>F         g5.0<0,1,0>F    -g5.5<0,1,0>F   g82<4,4,1>F { align16 1Q };
mul(8)          g87<1>F         g84<8,8,1>F     0.825336F       { align1 1Q };
mul(8)          g89<1>F         g84<8,8,1>F     0.564642F       { align1 1Q };
mov(1)          g5.3<1>F        0.564642F                       { align1 WE_all 1N };
mad(8)          g88<1>F         g87<4,4,1>F     -g5.3<0,1,0>F   g86<4,4,1>F { align16 1Q };
mov(1)          g5.4<1>F        0.825336F                       { align1 WE_all 1N };
mad(8)          g90<1>F         g89<4,4,1>F     g5.4<0,1,0>F    g86<4,4,1>F { align16 1Q };
mov(1)          g5.1<1>F        0.00234998F                     { align1 WE_all 1N };
mad(8)          g96<1>F         g95<4,4,1>F     (abs)g41<4,4,1>F g5.1<0,1,0>F { align16 1Q };
mov(1)          g5.2<1>F        0.00186483F                     { align1 WE_all 1N };
mad(8)          g98<1>F         g97<4,4,1>F     (abs)g41<4,4,1>F g5.2<0,1,0>F { align16 1Q };
mad(8)          g105<1>F        g96<4,4,1>F     g104<4,4,1>F    g5.5<0,1,0>F { align16 1Q };
mad(8)          g100<1>F        g99<4,4,1>F     -g5.3<0,1,0>F   g98<4,4,1>F { align16 1Q };
mad(8)          g102<1>F        g101<4,4,1>F    g5.4<0,1,0>F    g98<4,4,1>F { align16 1Q };
mov(1)          g5.6<1>F        0.350987F                       { align1 WE_all 1N };
mad(8)          g106<1>F        g100<4,4,1>F    g104<4,4,1>F    -g5.6<0,1,0>F { align16 1Q };
mov(1)          g5.7<1>F        0.513037F                       { align1 WE_all 1N };
mad(8)          g107<1>F        g102<4,4,1>F    g104<4,4,1>F    g5.7<0,1,0>F { align16 1Q };
   END B10 ->B11
   START B11 <-B10 <-B21 (20 cycles)
cmp.ge.f0(8)    null<1>D        g21<8,8,1>D     27D             { align1 1Q };
mov(1)          g6.1<1>F        0.8F                            { align1 WE_all 1N };
(+f0) break(8)  JIP: 369        UIP: 371                        { align1 1Q };
   END B11 ->B22 ->B12
   START B12 <-B11 (918 cycles)
add(8)          g112<1>F        g14<8,8,1>F     -g110<8,8,1>F   { align1 1Q compacted };
mov(1)          g6.2<1>F        1.7F                            { align1 WE_all 1N };
add(8)          g3<1>F          g13<8,8,1>F     -g110<8,8,1>F   { align1 1Q compacted };
mov(8)          g37<1>F         (abs)g41<8,8,1>F                { align1 1Q };
mul(8)          g55<1>F         (abs)g41<8,8,1>F 0.3F           { align1 1Q };
mov(1)          g7.1<1>F        1.4427F                         { align1 WE_all 1N };
mov(8)          g27<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g26<1>UD        0x00000000UD                    { align1 1Q compacted };
mov(8)          g25<1>UD        0x00000000UD                    { align1 1Q compacted };
mad(8)          g113<1>F        g105<4,4,1>F    g85<4,4,1>F     g112<4,4,1>F { align16 1Q };
mad(8)          g118<1>F        g106<4,4,1>F    g88<4,4,1>F     g112<4,4,1>F { align16 1Q };
mad(8)          g123<1>F        g107<4,4,1>F    g90<4,4,1>F     g112<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g105<4,4,1>F    g85<4,4,1>F     g3<4,4,1>F { align16 1Q };
mad(8)          g11<1>F         g106<4,4,1>F    g88<4,4,1>F     g3<4,4,1>F { align16 1Q };
mad(8)          g29<1>F         g107<4,4,1>F    g90<4,4,1>F     g3<4,4,1>F { align16 1Q };
math sin(8)     g36<1>F         g37<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g56<1>F         g55<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g114<1>F        g113<8,8,1>F    0.588235F       { align1 1Q };
mul(8)          g119<1>F        g118<8,8,1>F    0.588235F       { align1 1Q };
mul(8)          g124<1>F        g123<8,8,1>F    0.588235F       { align1 1Q };
mul(8)          g5<1>F          g4<8,8,1>F      0.588235F       { align1 1Q };
mul(8)          g12<1>F         g11<8,8,1>F     0.588235F       { align1 1Q };
mul(8)          g38<1>F         g36<8,8,1>F     4373.11F        { align1 1Q };
mul(8)          g30<1>F         g29<8,8,1>F     0.588235F       { align1 1Q };
rndd(8)         g115<1>F        g114<8,8,1>F                    { align1 1Q };
rndd(8)         g120<1>F        g119<8,8,1>F                    { align1 1Q };
rndd(8)         g125<1>F        g124<8,8,1>F                    { align1 1Q };
rndd(8)         g8<1>F          g5<8,8,1>F                      { align1 1Q };
rndd(8)         g22<1>F         g12<8,8,1>F                     { align1 1Q };
frc(8)          g39<1>F         g38<8,8,1>F                     { align1 1Q };
rndd(8)         g33<1>F         g30<8,8,1>F                     { align1 1Q };
mad(8)          g116<1>F        g113<4,4,1>F    g115<4,4,1>F    -g6.2<0,1,0>F { align16 1Q };
mad(8)          g121<1>F        g118<4,4,1>F    g120<4,4,1>F    -g6.2<0,1,0>F { align16 1Q };
mad(8)          g126<1>F        g123<4,4,1>F    g125<4,4,1>F    -g6.2<0,1,0>F { align16 1Q };
mad(8)          g9<1>F          g4<4,4,1>F      g8<4,4,1>F      -g6.2<0,1,0>F { align16 1Q };
mad(8)          g23<1>F         g11<4,4,1>F     g22<4,4,1>F     -g6.2<0,1,0>F { align16 1Q };
add(8)          g40<1>F         g39<8,8,1>F     1e-06F          { align1 1Q };
mad(8)          g34<1>F         g29<4,4,1>F     g33<4,4,1>F     -g6.2<0,1,0>F { align16 1Q };
mov(1)          g6.3<1>F        0.7F                            { align1 WE_all 1N };
add(8)          g117<1>F        -g116<8,8,1>F   0.85F           { align1 1Q };
add(8)          g122<1>F        -g121<8,8,1>F   0.85F           { align1 1Q };
add(8)          g127<1>F        -g126<8,8,1>F   0.85F           { align1 1Q };
math log(8)     g42<1>F         g40<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g10<1>F         -g9<8,8,1>F     0.85F           { align1 1Q };
add(8)          g28<1>F         -g23<8,8,1>F    0.85F           { align1 1Q };
mad(8)          g51<1>F         g2.2<0,1,0>F    g6.3<0,1,0>F    (abs)g41<4,4,1>F { align16 1Q };
add(8)          g35<1>F         -g34<8,8,1>F    0.85F           { align1 1Q };
mov(8)          g22<1>F         (abs)g117<8,8,1>F               { align1 1Q };
mov(8)          g23<1>F         (abs)g122<8,8,1>F               { align1 1Q };
mov(8)          g24<1>F         (abs)g127<8,8,1>F               { align1 1Q };
mul(8)          g45<1>F         (abs)g10<8,8,1>F (abs)g10<8,8,1>F { align1 1Q };
mul(8)          g43<1>F         g42<8,8,1>F     0.0207944F      { align1 1Q };
math sin(8)     g52<1>F         g51<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g46<1>F         g45<4,4,1>F     (abs)g28<4,4,1>F (abs)g28<4,4,1>F { align16 1Q };
add(8)          g44<1>F         g43<8,8,1>F     7F              { align1 1Q };
mad(8)          g53<1>F         -g6.1<0,1,0>F   g52<4,4,1>F     g2.3<0,1,0>F { align16 1Q };
mov(1)          g6.4<1>F        1.1F                            { align1 WE_all 1N };
mad(8)          g47<1>F         g46<4,4,1>F     (abs)g35<4,4,1>F (abs)g35<4,4,1>F { align16 1Q };
mad(8)          g57<1>F         -g6.4<0,1,0>F   g56<4,4,1>F     g2.4<0,1,0>F { align16 1Q };
mov(1)          g6.5<1>F        0.206099F                       { align1 WE_all 1N };
add(8)          g48<1>F         -g47<8,8,1>F    1F              { align1 1Q };
math inv(8)     g49<1>F         g48<8,8,1>F     null<8,8,1>F    { align1 1Q };
mov(8)          g60<1>F         (abs)g48<8,8,1>F                { align1 1Q };
math pow(8)     g59<1>F         g60<8,8,1>F     g31<8,8,1>F     { align1 1Q compacted };
mad(8)          g50<1>F         -g2.5<0,1,0>F   g49<4,4,1>F     (abs)g10<4,4,1>F { align16 1Q };
mad(8)          g54<1>F         g53<4,4,1>F     g49<4,4,1>F     (abs)g28<4,4,1>F { align16 1Q };
mad(8)          g58<1>F         g57<4,4,1>F     g49<4,4,1>F     (abs)g35<4,4,1>F { align16 1Q };
mul(8)          g65<1>F         g50<8,8,1>F     g50<8,8,1>F     { align1 1Q compacted };
mul(8)          g61<1>F         g44<8,8,1>F     g59<8,8,1>F     { align1 1Q compacted };
mad(8)          g66<1>F         g65<4,4,1>F     g54<4,4,1>F     g54<4,4,1>F { align16 1Q };
mul(8)          g62<1>F         g61<8,8,1>F     1.4427F         { align1 1Q };
mov(8)          g64<1>F         -g62<8,8,1>F                    { align1 1Q };
mad(8)          g67<1>F         g66<4,4,1>F     g58<4,4,1>F     g58<4,4,1>F { align16 1Q };
math exp(8)     g63<1>F         g64<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g68<1>F         -g67<8,8,1>F    1F              { align1 1Q };
math inv(8)     g69<1>F         g68<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g73<1>F         g68<8,8,1>F     -g48<8,8,1>F    { align1 1Q compacted };
mov(8)          g76<1>F         (abs)g73<8,8,1>F                { align1 1Q };
mad(8)          g70<1>F         -g2.5<0,1,0>F   g69<4,4,1>F     (abs)g50<4,4,1>F { align16 1Q };
mad(8)          g71<1>F         g53<4,4,1>F     g69<4,4,1>F     (abs)g54<4,4,1>F { align16 1Q };
mad(8)          g72<1>F         g57<4,4,1>F     g69<4,4,1>F     (abs)g58<4,4,1>F { align16 1Q };
math pow(8)     g74<1>F         g76<8,8,1>F     g31<8,8,1>F     { align1 1Q compacted };
mul(8)          g81<1>F         g70<8,8,1>F     g70<8,8,1>F     { align1 1Q compacted };
mad(8)          g82<1>F         g81<4,4,1>F     g71<4,4,1>F     g71<4,4,1>F { align16 1Q };
mul(8)          g77<1>F         g44<8,8,1>F     g74<8,8,1>F     { align1 1Q compacted };
mad(8)          g78<1>F         -g6.5<0,1,0>F   g7.1<0,1,0>F    -g77<4,4,1>F { align16 1Q };
mad(8)          g83<1>F         g82<4,4,1>F     g72<4,4,1>F     g72<4,4,1>F { align16 1Q };
mov(1)          g6.6<1>F        0.412199F                       { align1 WE_all 1N };
math exp(8)     g79<1>F         g78<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g84<1>F         -g83<8,8,1>F    1F              { align1 1Q };
math inv(8)     g86<1>F         g84<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g92<1>F         g84<8,8,1>F     -g68<8,8,1>F    { align1 1Q compacted };
add(8)          g80<1>F         g63<8,8,1>F     g79<8,8,1>F     { align1 1Q compacted };
mov(8)          g94<1>F         (abs)g92<8,8,1>F                { align1 1Q };
mad(8)          g87<1>F         -g2.5<0,1,0>F   g86<4,4,1>F     (abs)g70<4,4,1>F { align16 1Q };
mad(8)          g89<1>F         g53<4,4,1>F     g86<4,4,1>F     (abs)g71<4,4,1>F { align16 1Q };
mad(8)          g91<1>F         g57<4,4,1>F     g86<4,4,1>F     (abs)g72<4,4,1>F { align16 1Q };
math pow(8)     g93<1>F         g94<8,8,1>F     g31<8,8,1>F     { align1 1Q compacted };
mul(8)          g99<1>F         g87<8,8,1>F     g87<8,8,1>F     { align1 1Q compacted };
mad(8)          g100<1>F        g99<4,4,1>F     g89<4,4,1>F     g89<4,4,1>F { align16 1Q };
mul(8)          g95<1>F         g44<8,8,1>F     g93<8,8,1>F     { align1 1Q compacted };
mad(8)          g96<1>F         -g6.6<0,1,0>F   g7.1<0,1,0>F    -g95<4,4,1>F { align16 1Q };
mad(8)          g101<1>F        g100<4,4,1>F    g91<4,4,1>F     g91<4,4,1>F { align16 1Q };
mov(1)          g6.7<1>F        0.618298F                       { align1 WE_all 1N };
math exp(8)     g97<1>F         g96<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g102<1>F        -g101<8,8,1>F   1F              { align1 1Q };
math inv(8)     g103<1>F        g102<8,8,1>F    null<8,8,1>F    { align1 1Q };
add(8)          g113<1>F        g102<8,8,1>F    -g84<8,8,1>F    { align1 1Q compacted };
add(8)          g98<1>F         g80<8,8,1>F     g97<8,8,1>F     { align1 1Q compacted };
mov(8)          g115<1>F        (abs)g113<8,8,1>F               { align1 1Q };
mad(8)          g104<1>F        -g2.5<0,1,0>F   g103<4,4,1>F    (abs)g87<4,4,1>F { align16 1Q };
mad(8)          g108<1>F        g53<4,4,1>F     g103<4,4,1>F    (abs)g89<4,4,1>F { align16 1Q };
mad(8)          g109<1>F        g57<4,4,1>F     g103<4,4,1>F    (abs)g91<4,4,1>F { align16 1Q };
math pow(8)     g114<1>F        g115<8,8,1>F    g31<8,8,1>F     { align1 1Q compacted };
mul(8)          g120<1>F        g104<8,8,1>F    g104<8,8,1>F    { align1 1Q compacted };
mad(8)          g121<1>F        g120<4,4,1>F    g108<4,4,1>F    g108<4,4,1>F { align16 1Q };
mul(8)          g116<1>F        g44<8,8,1>F     g114<8,8,1>F    { align1 1Q compacted };
mad(8)          g117<1>F        -g6.7<0,1,0>F   g7.1<0,1,0>F    -g116<4,4,1>F { align16 1Q };
mad(8)          g122<1>F        g121<4,4,1>F    g109<4,4,1>F    g109<4,4,1>F { align16 1Q };
mov(1)          g7<1>F          0.824397F                       { align1 WE_all 1N };
math exp(8)     g118<1>F        g117<8,8,1>F    null<8,8,1>F    { align1 1Q };
add(8)          g123<1>F        -g122<8,8,1>F   1F              { align1 1Q };
math inv(8)     g124<1>F        g123<8,8,1>F    null<8,8,1>F    { align1 1Q };
add(8)          g3<1>F          g123<8,8,1>F    -g102<8,8,1>F   { align1 1Q compacted };
add(8)          g119<1>F        g98<8,8,1>F     g118<8,8,1>F    { align1 1Q compacted };
mov(8)          g5<1>F          (abs)g3<8,8,1>F                 { align1 1Q };
mad(8)          g125<1>F        -g2.5<0,1,0>F   g124<4,4,1>F    (abs)g104<4,4,1>F { align16 1Q };
mad(8)          g126<1>F        g53<4,4,1>F     g124<4,4,1>F    (abs)g108<4,4,1>F { align16 1Q };
mad(8)          g127<1>F        g57<4,4,1>F     g124<4,4,1>F    (abs)g109<4,4,1>F { align16 1Q };
math pow(8)     g4<1>F          g5<8,8,1>F      g31<8,8,1>F     { align1 1Q compacted };
mul(8)          g12<1>F         g125<8,8,1>F    g125<8,8,1>F    { align1 1Q compacted };
mad(8)          g28<1>F         g12<4,4,1>F     g126<4,4,1>F    g126<4,4,1>F { align16 1Q };
mul(8)          g8<1>F          g44<8,8,1>F     g4<8,8,1>F      { align1 1Q compacted };
mad(8)          g9<1>F          -g7.0<0,1,0>F   g7.1<0,1,0>F    -g8<4,4,1>F { align16 1Q };
mad(8)          g29<1>F         g28<4,4,1>F     g127<4,4,1>F    g127<4,4,1>F { align16 1Q };
mov(1)          g7.2<1>F        1.0305F                         { align1 WE_all 1N };
math exp(8)     g10<1>F         g9<8,8,1>F      null<8,8,1>F    { align1 1Q };
add(8)          g30<1>F         -g29<8,8,1>F    1F              { align1 1Q };
add(8)          g33<1>F         g30<8,8,1>F     -g123<8,8,1>F   { align1 1Q compacted };
add(8)          g11<1>F         g119<8,8,1>F    g10<8,8,1>F     { align1 1Q compacted };
mov(8)          g35<1>F         (abs)g33<8,8,1>F                { align1 1Q };
math pow(8)     g34<1>F         g35<8,8,1>F     g31<8,8,1>F     { align1 1Q compacted };
mul(8)          g36<1>F         g44<8,8,1>F     g34<8,8,1>F     { align1 1Q compacted };
mad(8)          g37<1>F         -g7.2<0,1,0>F   g7.1<0,1,0>F    -g36<4,4,1>F { align16 1Q };
math exp(8)     g38<1>F         g37<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g39<1>F         g11<8,8,1>F     g38<8,8,1>F     { align1 1Q compacted };
mul(8)          g40<1>F         g39<8,8,1>F     1.15632F        { align1 1Q };
add(8)          g42<1>F         g40<8,8,1>F     -0.7F           { align1 1Q };
sel.ge(8)       g43<1>F         g42<8,8,1>F     0F              { align1 1Q };
   END B12 ->B13
   START B13 <-B12 <-B16 (20 cycles)
cmp.ge.f0(8)    null<1>D        g27<8,8,1>D     50D             { align1 1Q };
(+f0) break(8)  JIP: 40         UIP: 42                         { align1 1Q };
   END B13 ->B17 ->B14
   START B14 <-B13 (188 cycles)
mul(8)          g44<1>F         g22<8,8,1>F     g22<8,8,1>F     { align1 1Q compacted };
mov(1)          g7.3<1>F        0.79F                           { align1 WE_all 1N };
cmp.g.f0(8)     null<1>D        g27<8,8,1>D     7D              { align1 1Q };
mad(8)          g45<1>F         g44<4,4,1>F     g23<4,4,1>F     g23<4,4,1>F { align16 1Q };
mad(8)          g46<1>F         g45<4,4,1>F     g24<4,4,1>F     g24<4,4,1>F { align16 1Q };
math inv(8)     g47<1>F         g46<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g22<1>F         -g7.3<0,1,0>F   g47<4,4,1>F     (abs)g22<4,4,1>F { align16 1Q };
mad(8)          g23<1>F         -g7.3<0,1,0>F   g47<4,4,1>F     (abs)g23<4,4,1>F { align16 1Q };
mad(8)          g24<1>F         -g7.3<0,1,0>F   g47<4,4,1>F     (abs)g24<4,4,1>F { align16 1Q };
mul(8)          g48<1>F         g22<8,8,1>F     g22<8,8,1>F     { align1 1Q compacted };
mad(8)          g49<1>F         g48<4,4,1>F     g23<4,4,1>F     g23<4,4,1>F { align16 1Q };
mad(8)          g50<1>F         g49<4,4,1>F     g24<4,4,1>F     g24<4,4,1>F { align16 1Q };
math sqrt(8)    g28<1>F         g50<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(8)          g51<1>F         g28<8,8,1>F     -g26<8,8,1>F    { align1 1Q compacted };
mov(8)          g29<1>F         (abs)g51<8,8,1>F                { align1 1Q };
(+f0) if(8)     JIP: 4                                          { align1 1Q };
   END B14 ->B15 ->B16
   START B15 <-B14 (2 cycles)
sel.l(8)        g29<1>F         (abs)g51<8,8,1>F 12F            { align1 1Q };
   END B15 ->B16
   START B16 <-B14 <-B15 (10 cycles)
endif(8)        JIP: 7                                          { align1 1Q };
add(8)          g25<1>F         g25<8,8,1>F     g29<8,8,1>F     { align1 1Q compacted };
add(8)          g27<1>D         g27<8,8,1>D     1D              { align1 1Q };
mov(8)          g26<1>D         g28<8,8,1>D                     { align1 1Q };
while(8)        JIP: -42                                        { align1 1Q };
   END B16 ->B13
   START B17 <-B13 (84 cycles)
mul(8)          g52<1>F         g25<8,8,1>F     g25<8,8,1>F     { align1 1Q compacted };
mov(8)          g54<1>F         g21<8,8,1>D                     { align1 1Q };
cmp.z.f0(8)     null<1>D        g21<8,8,1>D     0D              { align1 1Q };
mul(8)          g53<1>F         g25<8,8,1>F     g52<8,8,1>F     { align1 1Q compacted };
add(8)          g55<1>F         g54<8,8,1>F     -g111<8,8,1>F   { align1 1Q compacted };
sel.ge(8)       g56<1>F         g55<8,8,1>F     0F              { align1 1Q };
math pow(8)     g30<1>F         g32<8,8,1>F     g56<8,8,1>F     { align1 1Q compacted };
add(8)          g57<1>F         g15<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
add(8)          g58<1>F         g16<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
add(8)          g59<1>F         g17<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
(+f0) if(8)     JIP: 5                                          { align1 1Q };
   END B17 ->B18 ->B19
   START B18 <-B17 (18 cycles)
add(8)          g60<1>F         -g111<8,8,1>F   1F              { align1 1Q };
mul(8)          g30<1>F         g30<8,8,1>F     g60<8,8,1>F     { align1 1Q compacted };
   END B18 ->B19
   START B19 <-B17 <-B18 (20 cycles)
endif(8)        JIP: 39                                         { align1 1Q };
cmp.z.f0(8)     null<1>D        g21<8,8,1>D     26D             { align1 1Q };
(+f0) if(8)     JIP: 3                                          { align1 1Q };
   END B19 ->B20 ->B21
   START B20 <-B19 (2 cycles)
mul(8)          g30<1>F         g30<8,8,1>F     g111<8,8,1>F    { align1 1Q compacted };
   END B20 ->B21
   START B21 <-B19 <-B20 (52 cycles)
endif(8)        JIP: 32                                         { align1 1Q };
mul(8)          g61<1>F         g30<8,8,1>F     0.00012F        { align1 1Q };
mul(8)          g62<1>F         g112<8,8,1>F    g53<8,8,1>F     { align1 1Q compacted };
mul(8)          g63<1>F         g112<8,8,1>F    g112<8,8,1>F    { align1 1Q compacted };
mul(8)          g66<1>F         g43<8,8,1>F     1.4F            { align1 1Q };
mul(8)          g67<1>F         g43<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
mul(8)          g68<1>F         g43<8,8,1>F     1.8F            { align1 1Q };
mul(8)          g69<1>F         g43<8,8,1>F     g43<8,8,1>F     { align1 1Q compacted };
add(8)          g14<1>F         g14<8,8,1>F     0.0109F         { align1 1Q };
add(8)          g13<1>F         g13<8,8,1>F     0.0109F         { align1 1Q };
add(8)          g21<1>D         g21<8,8,1>D     1D              { align1 1Q };
mul(8)          g64<1>F         g53<8,8,1>F     g61<8,8,1>F     { align1 1Q compacted };
mad(8)          g15<1>F         g57<4,4,1>F     g61<4,4,1>F     g62<4,4,1>F { align16 1Q };
mul(8)          g65<1>F         g63<8,8,1>F     g63<8,8,1>F     { align1 1Q compacted };
mad(8)          g19<1>F         g19<4,4,1>F     g67<4,4,1>F     g66<4,4,1>F { align16 1Q };
add(8)          g20<1>F         g20<8,8,1>F     g67<8,8,1>F     { align1 1Q compacted };
mul(8)          g70<1>F         g69<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
mad(8)          g16<1>F         g58<4,4,1>F     g64<4,4,1>F     g63<4,4,1>F { align16 1Q };
mad(8)          g17<1>F         g59<4,4,1>F     g64<4,4,1>F     g65<4,4,1>F { align16 1Q };
mad(8)          g18<1>F         g18<4,4,1>F     g70<4,4,1>F     g68<4,4,1>F { align16 1Q };
while(8)        JIP: -373                                       { align1 1Q };
   END B21 ->B11
   START B22 <-B11 (196 cycles)
mul(8)          g71<1>F         g15<8,8,1>F     g15<8,8,1>F     { align1 1Q compacted };
mov(1)          g7.4<1>F        0.98F                           { align1 WE_all 1N };
mov(8)          g79<1>F         (abs)g41<8,8,1>F                { align1 1Q };
add(8)          g88<1>F         g75<8,8,1>F     1F              { align1 1Q };
mov(8)          m4<1>F          1F                              { align1 1Q };
mad(8)          g72<1>F         g71<4,4,1>F     g16<4,4,1>F     g16<4,4,1>F { align16 1Q };
math sin(8)     g78<1>F         g79<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g89<1>F         g88<8,8,1>F     0.5F            { align1 1Q };
mad(8)          g73<1>F         g72<4,4,1>F     g17<4,4,1>F     g17<4,4,1>F { align16 1Q };
add(8)          g91<1>F         -g89<8,8,1>F    1F              { align1 1Q };
mul(8)          g80<1>F         g78<8,8,1>F     0.211F          { align1 1Q };
mul(8)          g81<1>F         g18<8,8,1>F     g80<8,8,1>F     { align1 1Q compacted };
mul(8)          g82<1>F         g19<8,8,1>F     g80<8,8,1>F     { align1 1Q compacted };
mul(8)          g83<1>F         g20<8,8,1>F     g80<8,8,1>F     { align1 1Q compacted };
math sqrt(8)    g74<1>F         g73<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g85<1>F         g81<8,8,1>F     0.05F           { align1 1Q };
mul(8)          g84<1>F         g83<8,8,1>F     1.8F            { align1 1Q };
lrp(8)          g75<1>F         g7.4<0,1,0>F    g15<4,4,1>F     g74<4,4,1>F { align16 1Q };
lrp(8)          g76<1>F         g7.4<0,1,0>F    g16<4,4,1>F     g74<4,4,1>F { align16 1Q };
lrp(8)          g77<1>F         g7.4<0,1,0>F    g17<4,4,1>F     g74<4,4,1>F { align16 1Q };
mov(1)          g7.5<1>F        0.01F                           { align1 WE_all 1N };
lrp(8)          g86<1>F         g6.1<0,1,0>F    g84<4,4,1>F     g82<4,4,1>F { align16 1Q };
mad(8)          g93<1>F         g85<4,4,1>F     g7.5<0,1,0>F    g75<4,4,1>F { align16 1Q };
mul(8)          g87<1>F         g86<8,8,1>F     0.5F            { align1 1Q };
sel.sat.l(8)    g94<1>F         g93<8,8,1>F     0.5F            { align1 1Q };
mul(8)          g90<1>F         g87<8,8,1>F     g89<8,8,1>F     { align1 1Q compacted };
mul(8)          g92<1>F         g87<8,8,1>F     g91<8,8,1>F     { align1 1Q compacted };
mul(8)          m1<1>F          g94<8,8,1>F     2F              { align1 1Q };
mad(8)          g97<1>F         g90<4,4,1>F     g7.5<0,1,0>F    g77<4,4,1>F { align16 1Q };
mad(8)          g95<1>F         g92<4,4,1>F     g7.5<0,1,0>F    g76<4,4,1>F { align16 1Q };
sel.sat.l(8)    g98<1>F         g97<8,8,1>F     0.5F            { align1 1Q };
sel.sat.l(8)    g96<1>F         g95<8,8,1>F     0.5F            { align1 1Q };
mul(8)          m3<1>F          g98<8,8,1>F     2F              { align1 1Q };
mul(8)          m2<1>F          g96<8,8,1>F     2F              { align1 1Q };
sendc(8)        null<1>UW       m1<8,8,1>F
                            render RT write SIMD8 LastRT Surface = 0 mlen 4 rlen 0 { align1 1Q EOT };
nop                                                             ;
   END B22

Native code for unnamed fragment shader GLSL1
SIMD16 shader: 704 instructions. 2 loops. 42934 cycles. 0:0 spills:fills. Promoted 38 constants. Compacted 11264 to 10272 bytes (9%)
   START B0 (464 cycles)
add(16)         g7<1>UW         g1.4<2,4,0>UW   0x10101010V     { align1 1H };
add(16)         g9<1>UW         g1.5<2,4,0>UW   0x11001100V     { align1 1H };
mov(16)         g26<1>D         1075000115D                     { align1 1H };
mov(16)         g28<1>D         1061326684D                     { align1 1H };
mul(16)         g50<1>F         g6<0,1,0>F      0.0001F         { align1 1H };
mov(1)          g103<1>F        0.021F                          { align1 WE_all 1N };
mul(16)         g2<1>F          g6<0,1,0>F      0.002F          { align1 1H };
mov(16)         g12<1>F         g6.3<0,1,0>F                    { align1 1H };
mov(16)         g35<1>F         g6.4<0,1,0>F                    { align1 1H };
sel.ge(16)      g37<1>F         g6.3<0,1,0>F    g6.4<0,1,0>F    { align1 1H };
mov(16)         g4<1>F          g7<8,8,1>UW                     { align1 1H };
mad(8)          g56<1>F         g6.1<0,1,0>F    g103.0<0,1,0>F  g6.0<0,1,0>F { align16 1Q };
math sin(8)     g10<1>F         g2<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g11<1>F         g3<8,8,1>F      null<8,8,1>F    { align1 2Q };
mov(16)         g7<1>F          g9<8,8,1>UW                     { align1 1H };
math inv(8)     g19<1>F         g13<8,8,1>F     null<8,8,1>F    { align1 2Q };
math inv(8)     g2<1>F          g12<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g3<1>F          g35<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g49<1>F         g36<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g9<1>F          g6.1<0,1,0>F    g103.0<0,1,0>F  g6.0<0,1,0>F { align16 2Q };
math inv(8)     g39<1>F         g37<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g40<1>F         g38<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g52<1>F         g4<8,8,1>F      0.5F            { align1 1H };
mov(1)          g103.1<1>F      1F                              { align1 WE_all 1N };
mul(16)         g12<1>F         g10<8,8,1>F     121F            { align1 1H };
add(16)         g54<1>F         g7<8,8,1>F      0.5F            { align1 1H };
math sin(8)     g4<1>F          g56<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g5<1>F          g9<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g58<1>F         g52<8,8,1>F     2F              { align1 1H };
mad(8)          g56<1>F         g6.6<0,1,0>F    g6.5<0,1,0>F    g54<4,4,1>F { align16 1Q };
mad(8)          g57<1>F         g6.6<0,1,0>F    g6.5<0,1,0>F    g55<4,4,1>F { align16 2Q };
mul(16)         g7<1>F          g50<8,8,1>F     (abs)g4<8,8,1>F { align1 1H };
mad(8)          g9<1>F          -g103.1<0,1,0>F g2<4,4,1>F      g58<4,4,1>F { align16 1Q };
mad(8)          g10<1>F         -g103.1<0,1,0>F g19<4,4,1>F     g59<4,4,1>F { align16 2Q };
mul(16)         g33<1>F         g56<8,8,1>F     2F              { align1 1H };
math sin(8)     g58<1>F         g7<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g4<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g14<1>F         g9<8,8,1>F      g6.3<0,1,0>F    { align1 1H compacted };
mad(8)          g8<1>F          -g103.1<0,1,0>F g49<4,4,1>F     g34<4,4,1>F { align16 2Q };
mad(8)          g7<1>F          -g103.1<0,1,0>F g3<4,4,1>F      g33<4,4,1>F { align16 1Q };
mov(1)          g103.3<1>F      0.1F                            { align1 WE_all 1N };
mad(8)          g30<1>F         g12<4,4,1>F     g6.0<0,1,0>F    g58<4,4,1>F { align16 1Q };
mad(8)          g31<1>F         g13<4,4,1>F     g6.0<0,1,0>F    g4<4,4,1>F { align16 2Q };
mul(16)         g22<1>F         g14<8,8,1>F     g39<8,8,1>F     { align1 1H compacted };
mul(16)         g9<1>F          g7<8,8,1>F      g6.4<0,1,0>F    { align1 1H compacted };
mul(16)         g13<1>F         (abs)g30<8,8,1>F 0.02F          { align1 1H };
mul(16)         g41<1>F         (abs)g30<8,8,1>F 1.5F           { align1 1H };
mul(16)         g32<1>F         (abs)g30<8,8,1>F 0.05F          { align1 1H };
mul(16)         g20<1>F         (abs)g30<8,8,1>F 0.001F         { align1 1H };
mul(16)         g11<1>F         g9<8,8,1>F      g39<8,8,1>F     { align1 1H compacted };
add(16)         g15<1>F         g13<8,8,1>F     0.785398F       { align1 1H };
math sin(8)     g43<1>F         g41<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g44<1>F         g42<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g34<1>F         g32<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g35<1>F         g33<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g41<1>F         g21<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g40<1>F         g20<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g17<1>F         g15<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g18<1>F         g16<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g45<1>F         g43<8,8,1>F     1.1F            { align1 1H };
mul(16)         g36<1>F         g34<8,8,1>F     0.5F            { align1 1H };
cmp.l.f0(16)    null<1>F        g40<8,8,1>F     0.5F            { align1 1H };
mul(16)         g34<1>F         g17<8,8,1>F     0.005F          { align1 1H };
add(16)         g47<1>F         g45<8,8,1>F     10F             { align1 1H };
mad(8)          g59<1>F         g36<4,4,1>F     g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g37<4,4,1>F     g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
mov(1)          g103.4<1>F      0.3F                            { align1 WE_all 1N };
mul(16)         g32<1>F         g22<8,8,1>F     g47<8,8,1>F     { align1 1H compacted };
mul(16)         g13<1>F         g11<8,8,1>F     g47<8,8,1>F     { align1 1H compacted };
math sin(8)     g7<1>F          g59<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g8<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g15<1>F         g32<8,8,1>F     g32<8,8,1>F     { align1 1H compacted };
mad(8)          g17<1>F         g15<4,4,1>F     g13<4,4,1>F     g13<4,4,1>F { align16 1Q };
mad(8)          g18<1>F         g16<4,4,1>F     g14<4,4,1>F     g14<4,4,1>F { align16 2Q };
mul(16)         g9<1>F          g17<8,8,1>F     g7<8,8,1>F      { align1 1H compacted };
mov(16)         g15<1>F         -g9<8,8,1>F                     { align1 1H };
math inv(8)     g10<1>F         g15<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g11<1>F         g16<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g16<1>F         g32<8,8,1>F     g10<8,8,1>F     { align1 1H compacted };
mul(16)         g22<1>F         g13<8,8,1>F     g10<8,8,1>F     { align1 1H compacted };
mul(16)         g32<1>F         g16<8,8,1>F     g16<8,8,1>F     { align1 1H compacted };
mad(8)          g60<1>F         g32<4,4,1>F     g22<4,4,1>F     g22<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g33<4,4,1>F     g23<4,4,1>F     g23<4,4,1>F { align16 2Q };
math sqrt(8)    g61<1>F         g60<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g5<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g7<1>F          g103.1<0,1,0>F  g103.4<0,1,0>F  -g61<4,4,1>F { align16 1Q };
mad(8)          g8<1>F          g103.1<0,1,0>F  g103.4<0,1,0>F  -g5<4,4,1>F { align16 2Q };
mov(1)          g103.2<1>F      2F                              { align1 WE_all 1N };
mov(1)          g103.5<1>F      0.5F                            { align1 WE_all 1N };
mul(16)         g36<1>F         g16<8,8,1>F     g7<8,8,1>F      { align1 1H compacted };
mul(16)         g38<1>F         g22<8,8,1>F     g7<8,8,1>F      { align1 1H compacted };
(-f0) if(16)    JIP: 288                                        { align1 1H };
   END B0 ->B1 ->B10
   START B1 <-B0 (264 cycles)
mul(16)         g42<1>F         g36<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
add(16)         g7<1>F          (abs)g30<8,8,1>F 0.5F           { align1 1H };
mul(16)         g12<1>F         g40<8,8,1>F     1.5F            { align1 1H };
mad(8)          g62<1>F         g42<4,4,1>F     g38<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g43<4,4,1>F     g39<4,4,1>F     g39<4,4,1>F { align16 2Q };
mul(16)         g9<1>F          g7<8,8,1>F      0.05F           { align1 1H };
cmp.l.f0(16)    null<1>F        g12<8,8,1>F     0.5F            { align1 1H };
math sin(8)     g12<1>F         g10<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g11<1>F         g9<8,8,1>F      null<8,8,1>F    { align1 1Q };
mul(16)         g13<1>F         g11<8,8,1>F     0.5F            { align1 1H };
mad(8)          g63<1>F         g13<4,4,1>F     g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          g14<4,4,1>F     g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
math sin(8)     g64<1>F         g63<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g7<1>F          g5<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g65<1>F         g103.5<0,1,0>F  g64<4,4,1>F     -g62<4,4,1>F { align16 1Q };
mad(8)          g8<1>F          g103.5<0,1,0>F  g7<4,4,1>F      -g4<4,4,1>F { align16 2Q };
mov(1)          g103.6<1>F      0.2F                            { align1 WE_all 1N };
math inv(8)     g4<1>F          g65<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g5<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g7<1>F          g36<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g9<1>F          g38<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g11<1>F         g7<8,8,1>F      g7<8,8,1>F      { align1 1H compacted };
mad(8)          g66<1>F         g11<4,4,1>F     g9<4,4,1>F      g9<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g12<4,4,1>F     g10<4,4,1>F     g10<4,4,1>F { align16 2Q };
math sqrt(8)    g67<1>F         g66<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g5<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g11<1>F         g103.1<0,1,0>F  g67<4,4,1>F     -g103.6<0,1,0>F { align16 1Q };
mad(8)          g12<1>F         g103.1<0,1,0>F  g5<4,4,1>F      -g103.6<0,1,0>F { align16 2Q };
mul(16)         g36<1>F         g7<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
mul(16)         g38<1>F         g9<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
(-f0) if(16)    JIP: 230                                        { align1 1H };
   END B1 ->B2 ->B9
   START B2 <-B1 (264 cycles)
mul(16)         g13<1>F         g36<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
add(16)         g7<1>F          (abs)g30<8,8,1>F 1F             { align1 1H };
mul(16)         g15<1>F         g40<8,8,1>F     2F              { align1 1H };
mad(8)          g68<1>F         g13<4,4,1>F     g38<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g14<4,4,1>F     g39<4,4,1>F     g39<4,4,1>F { align16 2Q };
mul(16)         g9<1>F          g7<8,8,1>F      0.05F           { align1 1H };
cmp.l.f0(16)    null<1>F        g15<8,8,1>F     0.5F            { align1 1H };
math sin(8)     g11<1>F         g9<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g12<1>F         g10<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g13<1>F         g11<8,8,1>F     0.5F            { align1 1H };
mad(8)          g69<1>F         g13<4,4,1>F     g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          g14<4,4,1>F     g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
math sin(8)     g70<1>F         g69<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g7<1>F          g5<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g71<1>F         g103.1<0,1,0>F  g70<4,4,1>F     -g68<4,4,1>F { align16 1Q };
mad(8)          g8<1>F          g103.1<0,1,0>F  g7<4,4,1>F      -g4<4,4,1>F { align16 2Q };
mov(1)          g103.7<1>F      0.15F                           { align1 WE_all 1N };
math inv(8)     g4<1>F          g71<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g5<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g7<1>F          g36<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g9<1>F          g38<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g11<1>F         g7<8,8,1>F      g7<8,8,1>F      { align1 1H compacted };
mad(8)          g72<1>F         g11<4,4,1>F     g9<4,4,1>F      g9<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g12<4,4,1>F     g10<4,4,1>F     g10<4,4,1>F { align16 2Q };
math sqrt(8)    g73<1>F         g72<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g5<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g11<1>F         g103.1<0,1,0>F  g73<4,4,1>F     -g103.7<0,1,0>F { align16 1Q };
mad(8)          g12<1>F         g103.1<0,1,0>F  g5<4,4,1>F      -g103.7<0,1,0>F { align16 2Q };
mul(16)         g36<1>F         g7<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
mul(16)         g38<1>F         g9<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
(-f0) if(16)    JIP: 172                                        { align1 1H };
   END B2 ->B3 ->B8
   START B3 <-B2 (264 cycles)
mul(16)         g16<1>F         g36<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
add(16)         g7<1>F          (abs)g30<8,8,1>F 1.5F           { align1 1H };
mov(1)          g24<1>F         1.5F                            { align1 WE_all 1N };
mul(16)         g12<1>F         g40<8,8,1>F     2.5F            { align1 1H };
mad(8)          g74<1>F         g16<4,4,1>F     g38<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g17<4,4,1>F     g39<4,4,1>F     g39<4,4,1>F { align16 2Q };
mul(16)         g9<1>F          g7<8,8,1>F      0.05F           { align1 1H };
cmp.l.f0(16)    null<1>F        g12<8,8,1>F     0.5F            { align1 1H };
math sin(8)     g12<1>F         g10<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g11<1>F         g9<8,8,1>F      null<8,8,1>F    { align1 1Q };
mul(16)         g13<1>F         g11<8,8,1>F     0.5F            { align1 1H };
mad(8)          g75<1>F         g13<4,4,1>F     g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          g14<4,4,1>F     g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
math sin(8)     g76<1>F         g75<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g7<1>F          g5<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g77<1>F         g24.0<0,1,0>F   g76<4,4,1>F     -g74<4,4,1>F { align16 1Q };
mad(8)          g8<1>F          g24.0<0,1,0>F   g7<4,4,1>F      -g4<4,4,1>F { align16 2Q };
mov(1)          g24.1<1>F       0.12F                           { align1 WE_all 1N };
math inv(8)     g4<1>F          g77<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g5<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g7<1>F          g36<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g9<1>F          g38<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g11<1>F         g7<8,8,1>F      g7<8,8,1>F      { align1 1H compacted };
mad(8)          g78<1>F         g11<4,4,1>F     g9<4,4,1>F      g9<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g12<4,4,1>F     g10<4,4,1>F     g10<4,4,1>F { align16 2Q };
math sqrt(8)    g79<1>F         g78<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g5<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g11<1>F         g103.1<0,1,0>F  g79<4,4,1>F     -g24.1<0,1,0>F { align16 1Q };
mad(8)          g12<1>F         g103.1<0,1,0>F  g5<4,4,1>F      -g24.1<0,1,0>F { align16 2Q };
mul(16)         g36<1>F         g7<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
mul(16)         g38<1>F         g9<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
(-f0) if(16)    JIP: 112                                        { align1 1H };
   END B3 ->B4 ->B7
   START B4 <-B3 (264 cycles)
mul(16)         g13<1>F         g36<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
add(16)         g7<1>F          (abs)g30<8,8,1>F 2F             { align1 1H };
mov(1)          g24.2<1>F       0.1F                            { align1 WE_all 1N };
mul(16)         g15<1>F         g40<8,8,1>F     3F              { align1 1H };
mad(8)          g80<1>F         g13<4,4,1>F     g38<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g14<4,4,1>F     g39<4,4,1>F     g39<4,4,1>F { align16 2Q };
mul(16)         g9<1>F          g7<8,8,1>F      0.05F           { align1 1H };
cmp.l.f0(16)    null<1>F        g15<8,8,1>F     0.5F            { align1 1H };
math sin(8)     g11<1>F         g9<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g12<1>F         g10<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g13<1>F         g11<8,8,1>F     0.5F            { align1 1H };
mad(8)          g81<1>F         g13<4,4,1>F     g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          g14<4,4,1>F     g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
math sin(8)     g82<1>F         g81<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g7<1>F          g5<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g83<1>F         g103.2<0,1,0>F  g82<4,4,1>F     -g80<4,4,1>F { align16 1Q };
mad(8)          g8<1>F          g103.2<0,1,0>F  g7<4,4,1>F      -g4<4,4,1>F { align16 2Q };
math inv(8)     g4<1>F          g83<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g5<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g7<1>F          g36<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g9<1>F          g38<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g11<1>F         g7<8,8,1>F      g7<8,8,1>F      { align1 1H compacted };
mad(8)          g84<1>F         g11<4,4,1>F     g9<4,4,1>F      g9<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g12<4,4,1>F     g10<4,4,1>F     g10<4,4,1>F { align16 2Q };
math sqrt(8)    g85<1>F         g84<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g5<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g11<1>F         g103.1<0,1,0>F  g85<4,4,1>F     -g24.2<0,1,0>F { align16 1Q };
mad(8)          g12<1>F         g103.1<0,1,0>F  g5<4,4,1>F      -g24.2<0,1,0>F { align16 2Q };
mul(16)         g36<1>F         g7<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
mul(16)         g38<1>F         g9<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
(-f0) if(16)    JIP: 54                                         { align1 1H };
   END B4 ->B5 ->B6
   START B5 <-B4 (260 cycles)
mul(16)         g16<1>F         g36<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
add(16)         g7<1>F          (abs)g30<8,8,1>F 2.5F           { align1 1H };
mov(1)          g24.3<1>F       2.5F                            { align1 WE_all 1N };
mad(8)          g86<1>F         g16<4,4,1>F     g38<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g17<4,4,1>F     g39<4,4,1>F     g39<4,4,1>F { align16 2Q };
mul(16)         g9<1>F          g7<8,8,1>F      0.05F           { align1 1H };
math sin(8)     g11<1>F         g9<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g12<1>F         g10<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g13<1>F         g11<8,8,1>F     0.5F            { align1 1H };
mad(8)          g87<1>F         g13<4,4,1>F     g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          g14<4,4,1>F     g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
math sin(8)     g88<1>F         g87<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g7<1>F          g5<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g89<1>F         g24.3<0,1,0>F   g88<4,4,1>F     -g86<4,4,1>F { align16 1Q };
mad(8)          g8<1>F          g24.3<0,1,0>F   g7<4,4,1>F      -g4<4,4,1>F { align16 2Q };
mov(1)          g24.4<1>F       0.0857143F                      { align1 WE_all 1N };
math inv(8)     g4<1>F          g89<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g5<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g7<1>F          g36<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g9<1>F          g38<8,8,1>F     g4<8,8,1>F      { align1 1H compacted };
mul(16)         g11<1>F         g7<8,8,1>F      g7<8,8,1>F      { align1 1H compacted };
mad(8)          g90<1>F         g11<4,4,1>F     g9<4,4,1>F      g9<4,4,1>F { align16 1Q };
mad(8)          g4<1>F          g12<4,4,1>F     g10<4,4,1>F     g10<4,4,1>F { align16 2Q };
math sqrt(8)    g91<1>F         g90<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g5<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g11<1>F         g103.1<0,1,0>F  g91<4,4,1>F     -g24.4<0,1,0>F { align16 1Q };
mad(8)          g12<1>F         g103.1<0,1,0>F  g5<4,4,1>F      -g24.4<0,1,0>F { align16 2Q };
mul(16)         g36<1>F         g7<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
mul(16)         g38<1>F         g9<8,8,1>F      g11<8,8,1>F     { align1 1H compacted };
   END B5 ->B6
   START B6 <-B5 <-B4 (4 cycles)
endif(16)       JIP: 2                                          { align1 1H };
   END B6 ->B7
   START B7 <-B6 <-B3 (4 cycles)
endif(16)       JIP: 2                                          { align1 1H };
   END B7 ->B8
   START B8 <-B7 <-B2 (4 cycles)
endif(16)       JIP: 2                                          { align1 1H };
   END B8 ->B9
   START B9 <-B8 <-B1 (4 cycles)
endif(16)       JIP: 2                                          { align1 1H };
   END B9 ->B10
   START B10 <-B9 <-B0 (404 cycles)
endif(16)       JIP: 2                                          { align1 1H };
mad(8)          g92<1>F         -g6.2<0,1,0>F   g3<4,4,1>F      g56<4,4,1>F { align16 1Q };
mad(8)          g40<1>F         -g6.2<0,1,0>F   g49<4,4,1>F     g57<4,4,1>F { align16 2Q };
mad(8)          g22<1>F         -g6.1<0,1,0>F   g2<4,4,1>F      g52<4,4,1>F { align16 1Q };
mad(8)          g23<1>F         -g6.1<0,1,0>F   g19<4,4,1>F     g53<4,4,1>F { align16 2Q };
mov(1)          g24.5<1>F       0.9F                            { align1 WE_all 1N };
mov(1)          g25<1>F         0.62161F                        { align1 WE_all 1N };
add(16)         g44<1>F         (abs)g30<8,8,1>F -3311F         { align1 1H };
mov(1)          g104<1>F        0.0109F                         { align1 WE_all 1N };
mov(16)         g16<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g14<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g12<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g10<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g8<1>UD         0x00000000UD                    { align1 1H compacted };
mov(16)         g4<1>D          1047904911D                     { align1 1H };
add(16)         g55<1>F         g6.2<0,1,0>F    -0.5F           { align1 1H };
mul(16)         g57<1>F         (abs)g30<8,8,1>F 0.01F          { align1 1H };
mov(16)         g2<1>D          1048270654D                     { align1 1H };
mov(16)         g18<1>UD        0x00000000UD                    { align1 1H compacted };
add(16)         g53<1>F         g6.1<0,1,0>F    -0.5F           { align1 1H };
mad(8)          g95<1>F         g24.5<0,1,0>F   g103.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g43<1>F         g24.5<0,1,0>F   g103.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
mov(1)          g25.5<1>F       0.783327F                       { align1 WE_all 1N };
mul(16)         g41<1>F         g22<8,8,1>F     g22<8,8,1>F     { align1 1H compacted };
mov(16)         g6<1>UD         0x00000000UD                    { align1 1H compacted };
math cos(8)     g32<1>F         g57<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g33<1>F         g58<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g97<1>F         g57<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g51<1>F         g58<8,8,1>F     null<8,8,1>F    { align1 2Q };
mov(1)          g24.6<1>F       1.8F                            { align1 WE_all 1N };
mul(16)         g22<1>F         g44<8,8,1>F     g34<8,8,1>F     { align1 1H compacted };
math cos(8)     g46<1>F         g95<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g48<1>F         g95<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g47<1>F         g43<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g49<1>F         g43<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g93<1>F         g41<4,4,1>F     g92<4,4,1>F     g92<4,4,1>F { align16 1Q };
mad(8)          g34<1>F         g42<4,4,1>F     g40<4,4,1>F     g40<4,4,1>F { align16 2Q };
mad(8)          g96<1>F         g20<4,4,1>F     g32<4,4,1>F     g24.6<0,1,0>F { align16 1Q };
mad(8)          g50<1>F         g21<4,4,1>F     g33<4,4,1>F     g24.6<0,1,0>F { align16 2Q };
mul(16)         g57<1>F         g22<8,8,1>F     91.7431F        { align1 1H };
mov(1)          g24.7<1>F       5F                              { align1 WE_all 1N };
mad(8)          g94<1>F         g103.1<0,1,0>F  g103.4<0,1,0>F  -g93<4,4,1>F { align16 1Q };
mad(8)          g35<1>F         g103.1<0,1,0>F  g103.4<0,1,0>F  -g34<4,4,1>F { align16 2Q };
rndd(16)        g59<1>F         g57<8,8,1>F                     { align1 1H };
mad(8)          g98<1>F         g20<4,4,1>F     g97<4,4,1>F     g24.6<0,1,0>F { align16 1Q };
math inv(8)     g40<1>F         g94<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g41<1>F         g35<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g35<1>F         g23<4,4,1>F     g60<4,4,1>F     -g104.0<0,1,0>F { align16 2Q };
mad(8)          g34<1>F         g22<4,4,1>F     g59<4,4,1>F     -g104.0<0,1,0>F { align16 1Q };
mad(8)          g99<1>F         g98<4,4,1>F     g55<4,4,1>F     -g24.7<0,1,0>F { align16 1Q };
mul(16)         g42<1>F         g36<8,8,1>F     g40<8,8,1>F     { align1 1H compacted };
mul(16)         g44<1>F         g38<8,8,1>F     g40<8,8,1>F     { align1 1H compacted };
mul(16)         g36<1>F         g34<8,8,1>F     91.7431F        { align1 1H };
mad(8)          g38<1>F         g96<4,4,1>F     g53<4,4,1>F     -g24.7<0,1,0>F { align16 1Q };
mad(8)          g39<1>F         g50<4,4,1>F     g54<4,4,1>F     -g24.7<0,1,0>F { align16 2Q };
mad(8)          g54<1>F         g21<4,4,1>F     g51<4,4,1>F     g24.6<0,1,0>F { align16 2Q };
mul(16)         g50<1>F         g42<8,8,1>F     0.9F            { align1 1H };
mul(16)         g52<1>F         g44<8,8,1>F     0.9F            { align1 1H };
mul(16)         g43<1>F         g46<8,8,1>F     g38<8,8,1>F     { align1 1H compacted };
mul(16)         g58<1>F         g48<8,8,1>F     g38<8,8,1>F     { align1 1H compacted };
mul(16)         g20<1>F         g50<8,8,1>F     g46<8,8,1>F     { align1 1H compacted };
mad(8)          g57<1>F         g54<4,4,1>F     g56<4,4,1>F     -g24.7<0,1,0>F { align16 2Q };
mul(16)         g38<1>F         g48<8,8,1>F     g50<8,8,1>F     { align1 1H compacted };
mad(8)          g50<1>F         -g43<4,4,1>F    g99<4,4,1>F     -g48<4,4,1>F { align16 1Q };
mad(8)          g60<1>F         g58<4,4,1>F     g99<4,4,1>F     -g46<4,4,1>F { align16 1Q };
mad(8)          g24<1>F         g21<4,4,1>F     g49<4,4,1>F     g53<4,4,1>F { align16 2Q };
mad(8)          g100<1>F        g20<4,4,1>F     g48<4,4,1>F     g52<4,4,1>F { align16 1Q };
mad(8)          g40<1>F         -g38<4,4,1>F    g46<4,4,1>F     g52<4,4,1>F { align16 1Q };
mad(8)          g41<1>F         -g39<4,4,1>F    g47<4,4,1>F     g53<4,4,1>F { align16 2Q };
mad(8)          g51<1>F         -g44<4,4,1>F    g57<4,4,1>F     -g49<4,4,1>F { align16 2Q };
mad(8)          g61<1>F         g59<4,4,1>F     g57<4,4,1>F     -g47<4,4,1>F { align16 2Q };
mad(8)          g20<1>F         g25.0<0,1,0>F   -g25.5<0,1,0>F  g24<4,4,1>F { align16 2Q };
mad(8)          g106<1>F        g25.5<0,1,0>F   g25.0<0,1,0>F   g24<4,4,1>F { align16 2Q };
mad(8)          g96<1>F         g25.5<0,1,0>F   g25.0<0,1,0>F   g100<4,4,1>F { align16 1Q };
mad(8)          g101<1>F        g25.0<0,1,0>F   -g25.5<0,1,0>F  g100<4,4,1>F { align16 1Q };
mov(1)          g25.3<1>F       0.564642F                       { align1 WE_all 1N };
mul(16)         g38<1>F         g40<8,8,1>F     0.825336F       { align1 1H };
mul(16)         g42<1>F         g40<8,8,1>F     0.564642F       { align1 1H };
mul(16)         g62<1>F         g50<8,8,1>F     0.62161F        { align1 1H };
mul(16)         g44<1>F         g50<8,8,1>F     -0.783327F      { align1 1H };
mul(16)         g46<1>F         g60<8,8,1>F     0.825336F       { align1 1H };
mul(16)         g48<1>F         g60<8,8,1>F     0.564642F       { align1 1H };
mad(8)          g97<1>F         g38<4,4,1>F     -g25.3<0,1,0>F  g101<4,4,1>F { align16 1Q };
mad(8)          g107<1>F        g39<4,4,1>F     -g25.3<0,1,0>F  g20<4,4,1>F { align16 2Q };
mov(1)          g25.4<1>F       0.825336F                       { align1 WE_all 1N };
mad(8)          g98<1>F         g42<4,4,1>F     g25.4<0,1,0>F   g101<4,4,1>F { align16 1Q };
mad(8)          g108<1>F        g43<4,4,1>F     g25.4<0,1,0>F   g20<4,4,1>F { align16 2Q };
mov(1)          g25.1<1>F       0.00234998F                     { align1 WE_all 1N };
mad(8)          g102<1>F        g62<4,4,1>F     (abs)g30<4,4,1>F g25.1<0,1,0>F { align16 1Q };
mad(8)          g20<1>F         g63<4,4,1>F     (abs)g31<4,4,1>F g25.1<0,1,0>F { align16 2Q };
mov(1)          g25.2<1>F       0.00186483F                     { align1 WE_all 1N };
mad(8)          g110<1>F        g44<4,4,1>F     (abs)g30<4,4,1>F g25.2<0,1,0>F { align16 1Q };
mad(8)          g21<1>F         g45<4,4,1>F     (abs)g31<4,4,1>F g25.2<0,1,0>F { align16 2Q };
mad(8)          g99<1>F         g102<4,4,1>F    g22<4,4,1>F     g25.5<0,1,0>F { align16 1Q };
mad(8)          g109<1>F        g20<4,4,1>F     g23<4,4,1>F     g25.5<0,1,0>F { align16 2Q };
mad(8)          g111<1>F        g46<4,4,1>F     -g25.3<0,1,0>F  g110<4,4,1>F { align16 1Q };
mad(8)          g112<1>F        g48<4,4,1>F     g25.4<0,1,0>F   g110<4,4,1>F { align16 1Q };
mad(8)          g20<1>F         g47<4,4,1>F     -g25.3<0,1,0>F  g21<4,4,1>F { align16 2Q };
mad(8)          g24<1>F         g49<4,4,1>F     g25.4<0,1,0>F   g21<4,4,1>F { align16 2Q };
mov(1)          g25.6<1>F       0.350987F                       { align1 WE_all 1N };
mad(8)          g100<1>F        g111<4,4,1>F    g22<4,4,1>F     -g25.6<0,1,0>F { align16 1Q };
mad(8)          g110<1>F        g20<4,4,1>F     g23<4,4,1>F     -g25.6<0,1,0>F { align16 2Q };
mov(1)          g25.7<1>F       0.513037F                       { align1 WE_all 1N };
mad(8)          g101<1>F        g112<4,4,1>F    g22<4,4,1>F     g25.7<0,1,0>F { align16 1Q };
mad(8)          g111<1>F        g24<4,4,1>F     g23<4,4,1>F     g25.7<0,1,0>F { align16 2Q };
   END B10 ->B11
   START B11 <-B10 <-B21 (26 cycles)
cmp.ge.f0(16)   null<1>D        g18<8,8,1>D     27D             { align1 1H };
mov(1)          g104.1<1>F      0.8F                            { align1 WE_all 1N };
(+f0) break(16) JIP: 540        UIP: 542                        { align1 1H };
   END B11 ->B22 ->B12
   START B12 <-B11 (1060 cycles)
add(16)         g38<1>F         g4<8,8,1>F      -g34<8,8,1>F    { align1 1H compacted };
mov(1)          g104.2<1>F      1.7F                            { align1 WE_all 1N };
add(16)         g60<1>F         g2<8,8,1>F      -g34<8,8,1>F    { align1 1H compacted };
mov(16)         g62<1>F         (abs)g30<8,8,1>F                { align1 1H };
mul(16)         g42<1>F         (abs)g30<8,8,1>F 0.3F           { align1 1H };
mov(1)          g105.1<1>F      1.4427F                         { align1 WE_all 1N };
mov(16)         g24<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g22<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g20<1>UD        0x00000000UD                    { align1 1H compacted };
mad(8)          g40<1>F         g99<4,4,1>F     g96<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g41<1>F         g109<4,4,1>F    g106<4,4,1>F    g39<4,4,1>F { align16 2Q };
mad(8)          g48<1>F         g100<4,4,1>F    g97<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g49<1>F         g110<4,4,1>F    g107<4,4,1>F    g39<4,4,1>F { align16 2Q };
mad(8)          g56<1>F         g101<4,4,1>F    g98<4,4,1>F     g38<4,4,1>F { align16 1Q };
mad(8)          g57<1>F         g111<4,4,1>F    g108<4,4,1>F    g39<4,4,1>F { align16 2Q };
mad(8)          g64<1>F         g99<4,4,1>F     g96<4,4,1>F     g60<4,4,1>F { align16 1Q };
mad(8)          g65<1>F         g109<4,4,1>F    g106<4,4,1>F    g61<4,4,1>F { align16 2Q };
mad(8)          g72<1>F         g100<4,4,1>F    g97<4,4,1>F     g60<4,4,1>F { align16 1Q };
mad(8)          g73<1>F         g110<4,4,1>F    g107<4,4,1>F    g61<4,4,1>F { align16 2Q };
mad(8)          g80<1>F         g101<4,4,1>F    g98<4,4,1>F     g60<4,4,1>F { align16 1Q };
mad(8)          g81<1>F         g111<4,4,1>F    g108<4,4,1>F    g61<4,4,1>F { align16 2Q };
math sin(8)     g87<1>F         g62<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g88<1>F         g63<8,8,1>F     null<8,8,1>F    { align1 2Q };
math cos(8)     g102<1>F        g42<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g95<1>F         g43<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g50<1>F         g48<8,8,1>F     0.588235F       { align1 1H };
mul(16)         g58<1>F         g56<8,8,1>F     0.588235F       { align1 1H };
mul(16)         g42<1>F         g40<8,8,1>F     0.588235F       { align1 1H };
mul(16)         g66<1>F         g64<8,8,1>F     0.588235F       { align1 1H };
mul(16)         g74<1>F         g72<8,8,1>F     0.588235F       { align1 1H };
mul(16)         g82<1>F         g80<8,8,1>F     0.588235F       { align1 1H };
mul(16)         g89<1>F         g87<8,8,1>F     4373.11F        { align1 1H };
rndd(16)        g52<1>F         g50<8,8,1>F                     { align1 1H };
rndd(16)        g60<1>F         g58<8,8,1>F                     { align1 1H };
rndd(16)        g44<1>F         g42<8,8,1>F                     { align1 1H };
rndd(16)        g68<1>F         g66<8,8,1>F                     { align1 1H };
rndd(16)        g76<1>F         g74<8,8,1>F                     { align1 1H };
rndd(16)        g84<1>F         g82<8,8,1>F                     { align1 1H };
frc(16)         g91<1>F         g89<8,8,1>F                     { align1 1H };
mad(8)          g54<1>F         g48<4,4,1>F     g52<4,4,1>F     -g104.2<0,1,0>F { align16 1Q };
mad(8)          g55<1>F         g49<4,4,1>F     g53<4,4,1>F     -g104.2<0,1,0>F { align16 2Q };
mad(8)          g62<1>F         g56<4,4,1>F     g60<4,4,1>F     -g104.2<0,1,0>F { align16 1Q };
mad(8)          g63<1>F         g57<4,4,1>F     g61<4,4,1>F     -g104.2<0,1,0>F { align16 2Q };
mad(8)          g46<1>F         g40<4,4,1>F     g44<4,4,1>F     -g104.2<0,1,0>F { align16 1Q };
mad(8)          g47<1>F         g41<4,4,1>F     g45<4,4,1>F     -g104.2<0,1,0>F { align16 2Q };
mad(8)          g70<1>F         g64<4,4,1>F     g68<4,4,1>F     -g104.2<0,1,0>F { align16 1Q };
mad(8)          g71<1>F         g65<4,4,1>F     g69<4,4,1>F     -g104.2<0,1,0>F { align16 2Q };
mad(8)          g78<1>F         g72<4,4,1>F     g76<4,4,1>F     -g104.2<0,1,0>F { align16 1Q };
mad(8)          g79<1>F         g73<4,4,1>F     g77<4,4,1>F     -g104.2<0,1,0>F { align16 2Q };
mad(8)          g86<1>F         g80<4,4,1>F     g84<4,4,1>F     -g104.2<0,1,0>F { align16 1Q };
mad(8)          g87<1>F         g81<4,4,1>F     g85<4,4,1>F     -g104.2<0,1,0>F { align16 2Q };
add(16)         g93<1>F         g91<8,8,1>F     1e-06F          { align1 1H };
add(16)         g44<1>F         -g54<8,8,1>F    0.85F           { align1 1H };
mov(1)          g104.3<1>F      0.7F                            { align1 WE_all 1N };
add(16)         g42<1>F         -g46<8,8,1>F    0.85F           { align1 1H };
add(16)         g48<1>F         -g70<8,8,1>F    0.85F           { align1 1H };
add(16)         g46<1>F         -g62<8,8,1>F    0.85F           { align1 1H };
add(16)         g50<1>F         -g78<8,8,1>F    0.85F           { align1 1H };
math log(8)     g64<1>F         g94<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g52<1>F         -g86<8,8,1>F    0.85F           { align1 1H };
math log(8)     g63<1>F         g93<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g115<1>F        g103.2<0,1,0>F  g104.3<0,1,0>F  (abs)g30<4,4,1>F { align16 1Q };
mad(8)          g69<1>F         g103.2<0,1,0>F  g104.3<0,1,0>F  (abs)g31<4,4,1>F { align16 2Q };
mov(16)         g40<1>F         (abs)g42<8,8,1>F                { align1 1H };
mul(16)         g67<1>F         (abs)g48<8,8,1>F (abs)g48<8,8,1>F { align1 1H };
mov(16)         g42<1>F         (abs)g44<8,8,1>F                { align1 1H };
mov(16)         g44<1>F         (abs)g46<8,8,1>F                { align1 1H };
mul(16)         g65<1>F         g63<8,8,1>F     0.0207944F      { align1 1H };
math sin(8)     g116<1>F        g115<8,8,1>F    null<8,8,1>F    { align1 1Q };
math sin(8)     g70<1>F         g69<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g46<1>F         g68<4,4,1>F     (abs)g51<4,4,1>F (abs)g51<4,4,1>F { align16 2Q };
mad(8)          g113<1>F        g67<4,4,1>F     (abs)g50<4,4,1>F (abs)g50<4,4,1>F { align16 1Q };
add(16)         g54<1>F         g65<8,8,1>F     7F              { align1 1H };
mad(8)          g89<1>F         -g104.1<0,1,0>F g70<4,4,1>F     g103.3<0,1,0>F { align16 2Q };
mad(8)          g59<1>F         g46<4,4,1>F     (abs)g53<4,4,1>F (abs)g53<4,4,1>F { align16 2Q };
mad(8)          g46<1>F         -g104.1<0,1,0>F g116<4,4,1>F    g103.3<0,1,0>F { align16 1Q };
mad(8)          g58<1>F         g113<4,4,1>F    (abs)g52<4,4,1>F (abs)g52<4,4,1>F { align16 1Q };
mov(1)          g104.4<1>F      1.1F                            { align1 WE_all 1N };
mad(8)          g47<1>F         -g104.4<0,1,0>F g102<4,4,1>F    g103.4<0,1,0>F { align16 1Q };
mad(8)          g90<1>F         -g104.4<0,1,0>F g95<4,4,1>F     g103.4<0,1,0>F { align16 2Q };
add(16)         g56<1>F         -g58<8,8,1>F    1F              { align1 1H };
mov(1)          g104.5<1>F      0.206099F                       { align1 WE_all 1N };
math inv(8)     g114<1>F        g56<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g62<1>F         g57<8,8,1>F     null<8,8,1>F    { align1 2Q };
mov(16)         g60<1>F         (abs)g56<8,8,1>F                { align1 1H };
mad(8)          g58<1>F         -g103.5<0,1,0>F g114<4,4,1>F    (abs)g48<4,4,1>F { align16 1Q };
mad(8)          g117<1>F        g46<4,4,1>F     g114<4,4,1>F    (abs)g50<4,4,1>F { align16 1Q };
mad(8)          g118<1>F        g47<4,4,1>F     g114<4,4,1>F    (abs)g52<4,4,1>F { align16 1Q };
mad(8)          g59<1>F         -g103.5<0,1,0>F g62<4,4,1>F     (abs)g49<4,4,1>F { align16 2Q };
mad(8)          g71<1>F         g89<4,4,1>F     g62<4,4,1>F     (abs)g51<4,4,1>F { align16 2Q };
math pow(8)     g48<1>F         g60<8,8,1>F     g26<8,8,1>F     { align1 1Q compacted };
math pow(8)     g49<1>F         g61<8,8,1>F     g27<8,8,1>F     { align1 2Q compacted };
mad(8)          g60<1>F         g90<4,4,1>F     g62<4,4,1>F     (abs)g53<4,4,1>F { align16 2Q };
mul(16)         g66<1>F         g58<8,8,1>F     g58<8,8,1>F     { align1 1H compacted };
mul(16)         g50<1>F         g54<8,8,1>F     g48<8,8,1>F     { align1 1H compacted };
mad(8)          g119<1>F        g66<4,4,1>F     g117<4,4,1>F    g117<4,4,1>F { align16 1Q };
mad(8)          g61<1>F         g67<4,4,1>F     g71<4,4,1>F     g71<4,4,1>F { align16 2Q };
mul(16)         g52<1>F         g50<8,8,1>F     1.4427F         { align1 1H };
mad(8)          g67<1>F         g119<4,4,1>F    g118<4,4,1>F    g118<4,4,1>F { align16 1Q };
mad(8)          g68<1>F         g61<4,4,1>F     g60<4,4,1>F     g60<4,4,1>F { align16 2Q };
mov(16)         g65<1>F         -g52<8,8,1>F                    { align1 1H };
add(16)         g63<1>F         -g67<8,8,1>F    1F              { align1 1H };
math exp(8)     g61<1>F         g65<8,8,1>F     null<8,8,1>F    { align1 1Q };
math exp(8)     g62<1>F         g66<8,8,1>F     null<8,8,1>F    { align1 2Q };
math inv(8)     g120<1>F        g63<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g67<1>F         g64<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g68<1>F         g63<8,8,1>F     -g56<8,8,1>F    { align1 1H compacted };
mad(8)          g65<1>F         -g103.5<0,1,0>F g120<4,4,1>F    (abs)g58<4,4,1>F { align16 1Q };
mad(8)          g121<1>F        g46<4,4,1>F     g120<4,4,1>F    (abs)g117<4,4,1>F { align16 1Q };
mad(8)          g122<1>F        g47<4,4,1>F     g120<4,4,1>F    (abs)g118<4,4,1>F { align16 1Q };
mad(8)          g66<1>F         -g103.5<0,1,0>F g67<4,4,1>F     (abs)g59<4,4,1>F { align16 2Q };
mad(8)          g77<1>F         g89<4,4,1>F     g67<4,4,1>F     (abs)g71<4,4,1>F { align16 2Q };
mad(8)          g78<1>F         g90<4,4,1>F     g67<4,4,1>F     (abs)g60<4,4,1>F { align16 2Q };
mov(16)         g71<1>F         (abs)g68<8,8,1>F                { align1 1H };
mul(16)         g73<1>F         g65<8,8,1>F     g65<8,8,1>F     { align1 1H compacted };
math pow(8)     g69<1>F         g71<8,8,1>F     g26<8,8,1>F     { align1 1Q compacted };
math pow(8)     g70<1>F         g72<8,8,1>F     g27<8,8,1>F     { align1 2Q compacted };
mad(8)          g124<1>F        g73<4,4,1>F     g121<4,4,1>F    g121<4,4,1>F { align16 1Q };
mad(8)          g80<1>F         g74<4,4,1>F     g77<4,4,1>F     g77<4,4,1>F { align16 2Q };
mul(16)         g72<1>F         g54<8,8,1>F     g69<8,8,1>F     { align1 1H compacted };
mad(8)          g74<1>F         g124<4,4,1>F    g122<4,4,1>F    g122<4,4,1>F { align16 1Q };
mad(8)          g75<1>F         g80<4,4,1>F     g78<4,4,1>F     g78<4,4,1>F { align16 2Q };
mad(8)          g123<1>F        -g104.5<0,1,0>F g105.1<0,1,0>F  -g72<4,4,1>F { align16 1Q };
mad(8)          g79<1>F         -g104.5<0,1,0>F g105.1<0,1,0>F  -g73<4,4,1>F { align16 2Q };
mov(1)          g104.6<1>F      0.412199F                       { align1 WE_all 1N };
add(16)         g71<1>F         -g74<8,8,1>F    1F              { align1 1H };
math exp(8)     g67<1>F         g123<8,8,1>F    null<8,8,1>F    { align1 1Q };
math exp(8)     g68<1>F         g79<8,8,1>F     null<8,8,1>F    { align1 2Q };
math inv(8)     g125<1>F        g71<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g81<1>F         g72<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g75<1>F         g71<8,8,1>F     -g63<8,8,1>F    { align1 1H compacted };
add(16)         g69<1>F         g61<8,8,1>F     g67<8,8,1>F     { align1 1H compacted };
mad(8)          g73<1>F         -g103.5<0,1,0>F g125<4,4,1>F    (abs)g65<4,4,1>F { align16 1Q };
mad(8)          g126<1>F        g46<4,4,1>F     g125<4,4,1>F    (abs)g121<4,4,1>F { align16 1Q };
mad(8)          g127<1>F        g47<4,4,1>F     g125<4,4,1>F    (abs)g122<4,4,1>F { align16 1Q };
mad(8)          g74<1>F         -g103.5<0,1,0>F g81<4,4,1>F     (abs)g66<4,4,1>F { align16 2Q };
mad(8)          g86<1>F         g89<4,4,1>F     g81<4,4,1>F     (abs)g77<4,4,1>F { align16 2Q };
mad(8)          g87<1>F         g90<4,4,1>F     g81<4,4,1>F     (abs)g78<4,4,1>F { align16 2Q };
mov(16)         g77<1>F         (abs)g75<8,8,1>F                { align1 1H };
mul(16)         g79<1>F         g73<8,8,1>F     g73<8,8,1>F     { align1 1H compacted };
math pow(8)     g75<1>F         g77<8,8,1>F     g26<8,8,1>F     { align1 1Q compacted };
math pow(8)     g76<1>F         g78<8,8,1>F     g27<8,8,1>F     { align1 2Q compacted };
mad(8)          g49<1>F         g79<4,4,1>F     g126<4,4,1>F    g126<4,4,1>F { align16 1Q };
mad(8)          g91<1>F         g80<4,4,1>F     g86<4,4,1>F     g86<4,4,1>F { align16 2Q };
mul(16)         g78<1>F         g54<8,8,1>F     g75<8,8,1>F     { align1 1H compacted };
mad(8)          g82<1>F         g49<4,4,1>F     g127<4,4,1>F    g127<4,4,1>F { align16 1Q };
mad(8)          g83<1>F         g91<4,4,1>F     g87<4,4,1>F     g87<4,4,1>F { align16 2Q };
mad(8)          g48<1>F         -g104.6<0,1,0>F g105.1<0,1,0>F  -g78<4,4,1>F { align16 1Q };
mad(8)          g88<1>F         -g104.6<0,1,0>F g105.1<0,1,0>F  -g79<4,4,1>F { align16 2Q };
mov(1)          g104.7<1>F      0.618298F                       { align1 WE_all 1N };
add(16)         g80<1>F         -g82<8,8,1>F    1F              { align1 1H };
math exp(8)     g76<1>F         g48<8,8,1>F     null<8,8,1>F    { align1 1Q };
math exp(8)     g77<1>F         g88<8,8,1>F     null<8,8,1>F    { align1 2Q };
math inv(8)     g50<1>F         g80<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g92<1>F         g81<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g84<1>F         g80<8,8,1>F     -g71<8,8,1>F    { align1 1H compacted };
add(16)         g78<1>F         g69<8,8,1>F     g76<8,8,1>F     { align1 1H compacted };
mad(8)          g82<1>F         -g103.5<0,1,0>F g50<4,4,1>F     (abs)g73<4,4,1>F { align16 1Q };
mad(8)          g51<1>F         g46<4,4,1>F     g50<4,4,1>F     (abs)g126<4,4,1>F { align16 1Q };
mad(8)          g52<1>F         g47<4,4,1>F     g50<4,4,1>F     (abs)g127<4,4,1>F { align16 1Q };
mad(8)          g83<1>F         -g103.5<0,1,0>F g92<4,4,1>F     (abs)g74<4,4,1>F { align16 2Q };
mad(8)          g102<1>F        g89<4,4,1>F     g92<4,4,1>F     (abs)g86<4,4,1>F { align16 2Q };
mad(8)          g115<1>F        g90<4,4,1>F     g92<4,4,1>F     (abs)g87<4,4,1>F { align16 2Q };
mov(16)         g86<1>F         (abs)g84<8,8,1>F                { align1 1H };
mul(16)         g94<1>F         g82<8,8,1>F     g82<8,8,1>F     { align1 1H compacted };
math pow(8)     g84<1>F         g86<8,8,1>F     g26<8,8,1>F     { align1 1Q compacted };
math pow(8)     g85<1>F         g87<8,8,1>F     g27<8,8,1>F     { align1 2Q compacted };
mad(8)          g56<1>F         g94<4,4,1>F     g51<4,4,1>F     g51<4,4,1>F { align16 1Q };
mad(8)          g117<1>F        g95<4,4,1>F     g102<4,4,1>F    g102<4,4,1>F { align16 2Q };
mul(16)         g87<1>F         g54<8,8,1>F     g84<8,8,1>F     { align1 1H compacted };
mad(8)          g112<1>F        g56<4,4,1>F     g52<4,4,1>F     g52<4,4,1>F { align16 1Q };
mad(8)          g113<1>F        g117<4,4,1>F    g115<4,4,1>F    g115<4,4,1>F { align16 2Q };
mad(8)          g53<1>F         -g104.7<0,1,0>F g105.1<0,1,0>F  -g87<4,4,1>F { align16 1Q };
mad(8)          g116<1>F        -g104.7<0,1,0>F g105.1<0,1,0>F  -g88<4,4,1>F { align16 2Q };
mov(1)          g105<1>F        0.824397F                       { align1 WE_all 1N };
add(16)         g85<1>F         -g112<8,8,1>F   1F              { align1 1H };
math exp(8)     g91<1>F         g53<8,8,1>F     null<8,8,1>F    { align1 1Q };
math exp(8)     g92<1>F         g116<8,8,1>F    null<8,8,1>F    { align1 2Q };
math inv(8)     g57<1>F         g85<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g118<1>F        g86<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g87<1>F         g85<8,8,1>F     -g80<8,8,1>F    { align1 1H compacted };
add(16)         g93<1>F         g78<8,8,1>F     g91<8,8,1>F     { align1 1H compacted };
mad(8)          g113<1>F        -g103.5<0,1,0>F g57<4,4,1>F     (abs)g82<4,4,1>F { align16 1Q };
mad(8)          g58<1>F         g46<4,4,1>F     g57<4,4,1>F     (abs)g51<4,4,1>F { align16 1Q };
mad(8)          g59<1>F         g47<4,4,1>F     g57<4,4,1>F     (abs)g52<4,4,1>F { align16 1Q };
mad(8)          g114<1>F        -g103.5<0,1,0>F g118<4,4,1>F    (abs)g83<4,4,1>F { align16 2Q };
mad(8)          g119<1>F        g89<4,4,1>F     g118<4,4,1>F    (abs)g102<4,4,1>F { align16 2Q };
mad(8)          g120<1>F        g90<4,4,1>F     g118<4,4,1>F    (abs)g115<4,4,1>F { align16 2Q };
mov(16)         g48<1>F         (abs)g87<8,8,1>F                { align1 1H };
mul(16)         g50<1>F         g113<8,8,1>F    g113<8,8,1>F    { align1 1H compacted };
math pow(8)     g46<1>F         g48<8,8,1>F     g26<8,8,1>F     { align1 1Q compacted };
math pow(8)     g47<1>F         g49<8,8,1>F     g27<8,8,1>F     { align1 2Q compacted };
mad(8)          g48<1>F         g51<4,4,1>F     g119<4,4,1>F    g119<4,4,1>F { align16 2Q };
mad(8)          g61<1>F         g50<4,4,1>F     g58<4,4,1>F     g58<4,4,1>F { align16 1Q };
mul(16)         g49<1>F         g54<8,8,1>F     g46<8,8,1>F     { align1 1H compacted };
mad(8)          g52<1>F         g48<4,4,1>F     g120<4,4,1>F    g120<4,4,1>F { align16 2Q };
mad(8)          g51<1>F         g61<4,4,1>F     g59<4,4,1>F     g59<4,4,1>F { align16 1Q };
mad(8)          g60<1>F         -g105.0<0,1,0>F g105.1<0,1,0>F  -g49<4,4,1>F { align16 1Q };
mad(8)          g46<1>F         -g105.0<0,1,0>F g105.1<0,1,0>F  -g50<4,4,1>F { align16 2Q };
mov(1)          g105.2<1>F      1.0305F                         { align1 WE_all 1N };
add(16)         g56<1>F         -g51<8,8,1>F    1F              { align1 1H };
math exp(8)     g47<1>F         g60<8,8,1>F     null<8,8,1>F    { align1 1Q };
math exp(8)     g48<1>F         g46<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g58<1>F         g56<8,8,1>F     -g85<8,8,1>F    { align1 1H compacted };
add(16)         g49<1>F         g93<8,8,1>F     g47<8,8,1>F     { align1 1H compacted };
mov(16)         g61<1>F         (abs)g58<8,8,1>F                { align1 1H };
math pow(8)     g59<1>F         g61<8,8,1>F     g26<8,8,1>F     { align1 1Q compacted };
math pow(8)     g60<1>F         g62<8,8,1>F     g27<8,8,1>F     { align1 2Q compacted };
mul(16)         g62<1>F         g54<8,8,1>F     g59<8,8,1>F     { align1 1H compacted };
mad(8)          g64<1>F         -g105.2<0,1,0>F g105.1<0,1,0>F  -g62<4,4,1>F { align16 1Q };
mad(8)          g46<1>F         -g105.2<0,1,0>F g105.1<0,1,0>F  -g63<4,4,1>F { align16 2Q };
math exp(8)     g47<1>F         g64<8,8,1>F     null<8,8,1>F    { align1 1Q };
math exp(8)     g48<1>F         g46<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g51<1>F         g49<8,8,1>F     g47<8,8,1>F     { align1 1H compacted };
mul(16)         g53<1>F         g51<8,8,1>F     1.15632F        { align1 1H };
add(16)         g55<1>F         g53<8,8,1>F     -0.7F           { align1 1H };
sel.ge(16)      g57<1>F         g55<8,8,1>F     0F              { align1 1H };
   END B12 ->B13
   START B13 <-B12 <-B16 (26 cycles)
cmp.ge.f0(16)   null<1>D        g24<8,8,1>D     50D             { align1 1H };
(+f0) break(16) JIP: 70         UIP: 72                         { align1 1H };
   END B13 ->B17 ->B14
   START B14 <-B13 (222 cycles)
mul(16)         g59<1>F         g40<8,8,1>F     g40<8,8,1>F     { align1 1H compacted };
mov(1)          g105.3<1>F      0.79F                           { align1 WE_all 1N };
cmp.g.f0(16)    null<1>D        g24<8,8,1>D     7D              { align1 1H };
mad(8)          g65<1>F         g59<4,4,1>F     g42<4,4,1>F     g42<4,4,1>F { align16 1Q };
mad(8)          g46<1>F         g60<4,4,1>F     g43<4,4,1>F     g43<4,4,1>F { align16 2Q };
mad(8)          g66<1>F         g65<4,4,1>F     g44<4,4,1>F     g44<4,4,1>F { align16 1Q };
mad(8)          g47<1>F         g46<4,4,1>F     g45<4,4,1>F     g45<4,4,1>F { align16 2Q };
math inv(8)     g67<1>F         g66<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g48<1>F         g47<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g46<1>F         -g105.3<0,1,0>F g67<4,4,1>F     (abs)g40<4,4,1>F { align16 1Q };
mad(8)          g49<1>F         -g105.3<0,1,0>F g67<4,4,1>F     (abs)g42<4,4,1>F { align16 1Q };
mad(8)          g51<1>F         -g105.3<0,1,0>F g67<4,4,1>F     (abs)g44<4,4,1>F { align16 1Q };
mad(8)          g47<1>F         -g105.3<0,1,0>F g48<4,4,1>F     (abs)g41<4,4,1>F { align16 2Q };
mad(8)          g50<1>F         -g105.3<0,1,0>F g48<4,4,1>F     (abs)g43<4,4,1>F { align16 2Q };
mad(8)          g52<1>F         -g105.3<0,1,0>F g48<4,4,1>F     (abs)g45<4,4,1>F { align16 2Q };
mov(8)          g40<1>F         g46<8,8,1>F                     { align1 1Q };
mov(8)          g42<1>F         g49<8,8,1>F                     { align1 1Q };
mov(8)          g44<1>F         g51<8,8,1>F                     { align1 1Q };
mov(8)          g41<1>F         g47<8,8,1>F                     { align1 2Q };
mov(8)          g43<1>F         g50<8,8,1>F                     { align1 2Q };
mov(8)          g45<1>F         g52<8,8,1>F                     { align1 2Q };
mul(16)         g46<1>F         g40<8,8,1>F     g40<8,8,1>F     { align1 1H compacted };
mad(8)          g68<1>F         g46<4,4,1>F     g49<4,4,1>F     g49<4,4,1>F { align16 1Q };
mad(8)          g48<1>F         g47<4,4,1>F     g50<4,4,1>F     g50<4,4,1>F { align16 2Q };
mad(8)          g69<1>F         g68<4,4,1>F     g51<4,4,1>F     g51<4,4,1>F { align16 1Q };
mad(8)          g49<1>F         g48<4,4,1>F     g52<4,4,1>F     g52<4,4,1>F { align16 2Q };
math sqrt(8)    g46<1>F         g69<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g47<1>F         g49<8,8,1>F     null<8,8,1>F    { align1 2Q };
add(16)         g50<1>F         g46<8,8,1>F     -g22<8,8,1>F    { align1 1H compacted };
mov(16)         g48<1>F         (abs)g50<8,8,1>F                { align1 1H };
(+f0) if(16)    JIP: 4                                          { align1 1H };
   END B14 ->B15 ->B16
   START B15 <-B14 (4 cycles)
sel.l(16)       g48<1>F         (abs)g50<8,8,1>F 12F            { align1 1H };
   END B15 ->B16
   START B16 <-B14 <-B15 (20 cycles)
endif(16)       JIP: 7                                          { align1 1H };
add(16)         g20<1>F         g20<8,8,1>F     g48<8,8,1>F     { align1 1H compacted };
add(16)         g24<1>D         g24<8,8,1>D     1D              { align1 1H };
mov(16)         g22<1>D         g46<8,8,1>D                     { align1 1H };
while(16)       JIP: -72                                        { align1 1H };
   END B16 ->B13
   START B17 <-B13 (102 cycles)
mul(16)         g51<1>F         g20<8,8,1>F     g20<8,8,1>F     { align1 1H compacted };
mov(16)         g55<1>F         g18<8,8,1>D                     { align1 1H };
cmp.z.f0(16)    null<1>D        g18<8,8,1>D     0D              { align1 1H };
mul(16)         g53<1>F         g20<8,8,1>F     g51<8,8,1>F     { align1 1H compacted };
add(16)         g59<1>F         g55<8,8,1>F     -g36<8,8,1>F    { align1 1H compacted };
sel.ge(16)      g61<1>F         g59<8,8,1>F     0F              { align1 1H };
math pow(8)     g49<1>F         g28<8,8,1>F     g61<8,8,1>F     { align1 1Q compacted };
math pow(8)     g50<1>F         g29<8,8,1>F     g62<8,8,1>F     { align1 2Q compacted };
add(16)         g62<1>F         g6<8,8,1>F      g49<8,8,1>F     { align1 1H compacted };
add(16)         g64<1>F         g8<8,8,1>F      g49<8,8,1>F     { align1 1H compacted };
add(16)         g66<1>F         g10<8,8,1>F     g49<8,8,1>F     { align1 1H compacted };
(+f0) if(16)    JIP: 5                                          { align1 1H };
   END B17 ->B18 ->B19
   START B18 <-B17 (22 cycles)
add(16)         g68<1>F         -g36<8,8,1>F    1F              { align1 1H };
mul(16)         g49<1>F         g49<8,8,1>F     g68<8,8,1>F     { align1 1H compacted };
   END B18 ->B19
   START B19 <-B17 <-B18 (26 cycles)
endif(16)       JIP: 49                                         { align1 1H };
cmp.z.f0(16)    null<1>D        g18<8,8,1>D     26D             { align1 1H };
(+f0) if(16)    JIP: 3                                          { align1 1H };
   END B19 ->B20 ->B21
   START B20 <-B19 (4 cycles)
mul(16)         g49<1>F         g49<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
   END B20 ->B21
   START B21 <-B19 <-B20 (90 cycles)
endif(16)       JIP: 42                                         { align1 1H };
mul(16)         g69<1>F         g49<8,8,1>F     0.00012F        { align1 1H };
mul(16)         g71<1>F         g38<8,8,1>F     g53<8,8,1>F     { align1 1H compacted };
mul(16)         g73<1>F         g38<8,8,1>F     g38<8,8,1>F     { align1 1H compacted };
mul(16)         g79<1>F         g57<8,8,1>F     1.4F            { align1 1H };
mul(16)         g81<1>F         g57<8,8,1>F     g49<8,8,1>F     { align1 1H compacted };
mul(16)         g83<1>F         g57<8,8,1>F     1.8F            { align1 1H };
mul(16)         g85<1>F         g57<8,8,1>F     g57<8,8,1>F     { align1 1H compacted };
add(16)         g4<1>F          g4<8,8,1>F      0.0109F         { align1 1H };
add(16)         g2<1>F          g2<8,8,1>F      0.0109F         { align1 1H };
add(16)         g18<1>D         g18<8,8,1>D     1D              { align1 1H };
mul(16)         g75<1>F         g53<8,8,1>F     g69<8,8,1>F     { align1 1H compacted };
mad(8)          g6<1>F          g62<4,4,1>F     g69<4,4,1>F     g71<4,4,1>F { align16 1Q };
mad(8)          g7<1>F          g63<4,4,1>F     g70<4,4,1>F     g72<4,4,1>F { align16 2Q };
mul(16)         g77<1>F         g73<8,8,1>F     g73<8,8,1>F     { align1 1H compacted };
mad(8)          g14<1>F         g14<4,4,1>F     g81<4,4,1>F     g79<4,4,1>F { align16 1Q };
mad(8)          g15<1>F         g15<4,4,1>F     g82<4,4,1>F     g80<4,4,1>F { align16 2Q };
add(16)         g16<1>F         g16<8,8,1>F     g81<8,8,1>F     { align1 1H compacted };
mul(16)         g87<1>F         g85<8,8,1>F     g49<8,8,1>F     { align1 1H compacted };
mad(8)          g8<1>F          g64<4,4,1>F     g75<4,4,1>F     g73<4,4,1>F { align16 1Q };
mad(8)          g9<1>F          g65<4,4,1>F     g76<4,4,1>F     g74<4,4,1>F { align16 2Q };
mad(8)          g10<1>F         g66<4,4,1>F     g75<4,4,1>F     g77<4,4,1>F { align16 1Q };
mad(8)          g11<1>F         g67<4,4,1>F     g76<4,4,1>F     g78<4,4,1>F { align16 2Q };
mad(8)          g12<1>F         g12<4,4,1>F     g87<4,4,1>F     g83<4,4,1>F { align16 1Q };
mad(8)          g13<1>F         g13<4,4,1>F     g88<4,4,1>F     g84<4,4,1>F { align16 2Q };
while(16)       JIP: -544                                       { align1 1H };
   END B21 ->B11
   START B22 <-B11 (234 cycles)
mul(16)         g88<1>F         g6<8,8,1>F      g6<8,8,1>F      { align1 1H compacted };
mov(1)          g105.4<1>F      0.98F                           { align1 WE_all 1N };
mov(16)         g18<1>F         (abs)g30<8,8,1>F                { align1 1H };
add(16)         g34<1>F         g32<8,8,1>F     1F              { align1 1H };
mov(16)         m7<1>F          1F                              { align1 1H };
mad(8)          g70<1>F         g88<4,4,1>F     g8<4,4,1>F      g8<4,4,1>F { align16 1Q };
mad(8)          g2<1>F          g89<4,4,1>F     g9<4,4,1>F      g9<4,4,1>F { align16 2Q };
math sin(8)     g4<1>F          g18<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g5<1>F          g19<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g36<1>F         g34<8,8,1>F     0.5F            { align1 1H };
mad(8)          g71<1>F         g70<4,4,1>F     g10<4,4,1>F     g10<4,4,1>F { align16 1Q };
mad(8)          g3<1>F          g2<4,4,1>F      g11<4,4,1>F     g11<4,4,1>F { align16 2Q };
mul(16)         g19<1>F         g4<8,8,1>F      0.211F          { align1 1H };
add(16)         g40<1>F         -g36<8,8,1>F    1F              { align1 1H };
math sqrt(8)    g72<1>F         g71<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sqrt(8)    g4<1>F          g3<8,8,1>F      null<8,8,1>F    { align1 2Q };
mul(16)         g21<1>F         g12<8,8,1>F     g19<8,8,1>F     { align1 1H compacted };
mul(16)         g23<1>F         g14<8,8,1>F     g19<8,8,1>F     { align1 1H compacted };
mul(16)         g25<1>F         g16<8,8,1>F     g19<8,8,1>F     { align1 1H compacted };
lrp(8)          g73<1>F         g105.4<0,1,0>F  g6<4,4,1>F      g72<4,4,1>F { align16 1Q };
lrp(8)          g74<1>F         g105.4<0,1,0>F  g8<4,4,1>F      g72<4,4,1>F { align16 1Q };
lrp(8)          g75<1>F         g105.4<0,1,0>F  g10<4,4,1>F     g72<4,4,1>F { align16 1Q };
lrp(8)          g6<1>F          g105.4<0,1,0>F  g9<4,4,1>F      g4<4,4,1>F { align16 2Q };
lrp(8)          g5<1>F          g105.4<0,1,0>F  g7<4,4,1>F      g4<4,4,1>F { align16 2Q };
mul(16)         g29<1>F         g21<8,8,1>F     0.05F           { align1 1H };
lrp(8)          g7<1>F          g105.4<0,1,0>F  g11<4,4,1>F     g4<4,4,1>F { align16 2Q };
mul(16)         g27<1>F         g25<8,8,1>F     1.8F            { align1 1H };
mov(1)          g105.5<1>F      0.01F                           { align1 WE_all 1N };
lrp(8)          g31<1>F         g104.1<0,1,0>F  g27<4,4,1>F     g23<4,4,1>F { align16 1Q };
lrp(8)          g32<1>F         g104.1<0,1,0>F  g28<4,4,1>F     g24<4,4,1>F { align16 2Q };
mad(8)          g43<1>F         g29<4,4,1>F     g105.5<0,1,0>F  g73<4,4,1>F { align16 1Q };
mad(8)          g44<1>F         g30<4,4,1>F     g105.5<0,1,0>F  g5<4,4,1>F { align16 2Q };
mul(16)         g33<1>F         g31<8,8,1>F     0.5F            { align1 1H };
sel.sat.l(16)   g45<1>F         g43<8,8,1>F     0.5F            { align1 1H };
mul(16)         g42<1>F         g33<8,8,1>F     g40<8,8,1>F     { align1 1H compacted };
mul(16)         g38<1>F         g33<8,8,1>F     g36<8,8,1>F     { align1 1H compacted };
mul(16)         m1<1>F          g45<8,8,1>F     2F              { align1 1H };
mad(8)          g46<1>F         g42<4,4,1>F     g105.5<0,1,0>F  g74<4,4,1>F { align16 1Q };
mad(8)          g47<1>F         g43<4,4,1>F     g105.5<0,1,0>F  g6<4,4,1>F { align16 2Q };
mad(8)          g49<1>F         g38<4,4,1>F     g105.5<0,1,0>F  g75<4,4,1>F { align16 1Q };
mad(8)          g50<1>F         g39<4,4,1>F     g105.5<0,1,0>F  g7<4,4,1>F { align16 2Q };
sel.sat.l(16)   g51<1>F         g49<8,8,1>F     0.5F            { align1 1H };
sel.sat.l(16)   g48<1>F         g46<8,8,1>F     0.5F            { align1 1H };
mul(16)         m5<1>F          g51<8,8,1>F     2F              { align1 1H };
mul(16)         m3<1>F          g48<8,8,1>F     2F              { align1 1H };
sendc(16)       null<1>UW       m1<8,8,1>F
                            render RT write SIMD16 LastRT Surface = 0 mlen 8 rlen 0 { align1 1H EOT };
   END B22

Program linked successfully
GLSL IR for native fragment shader 0:
(
(declare (location=1 shader_in ) vec4 gl_Color)
(declare (location=2 shader_out ) vec4 gl_FragColor)
( function main
  (signature void
    (parameters
    )
    (
      (assign  (xyzw) (var_ref gl_FragColor)  (var_ref gl_Color) ) 
    ))

)

)


NIR (SSA form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: GLSL0
inputs: 0
outputs: 0
uniforms: 0
shared: 0
decl_var shader_in INTERP_MODE_SMOOTH vec4 gl_Color (VARYING_SLOT_COL0, 1, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	block block_0:
	/* preds: */
	vec2 32 ssa_0 = intrinsic load_barycentric_pixel () () (1) /* interp_mode=1 */
	vec1 32 ssa_1 = load_const (0x00000000 /* 0.000000 */)
	vec4 32 ssa_2 = intrinsic load_interpolated_input (ssa_0, ssa_1) () (1, 0) /* base=1 */ /* component=0 */
	intrinsic store_output (ssa_2, ssa_1) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

NIR (final form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: GLSL0
inputs: 0
outputs: 0
uniforms: 0
shared: 0
decl_var shader_in INTERP_MODE_SMOOTH vec4 gl_Color (VARYING_SLOT_COL0, 1, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	block block_0:
	/* preds: */
	vec2 32 ssa_0 = intrinsic load_barycentric_pixel () () (1) /* interp_mode=1 */
	vec1 32 ssa_1 = load_const (0x00000000 /* 0.000000 */)
	vec4 32 ssa_2 = intrinsic load_interpolated_input (ssa_0, ssa_1) () (1, 0) /* base=1 */ /* component=0 */
	intrinsic store_output (ssa_2, ssa_1) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

Native code for unnamed fragment shader GLSL0
SIMD8 shader: 5 instructions. 0 loops. 24 cycles. 0:0 spills:fills. Promoted 0 constants. Compacted 80 to 48 bytes (40%)
   START B0 (24 cycles)
pln(8)          m1<1>F          g4<0,1,0>F      g2<8,8,1>F      { align1 1Q compacted };
pln(8)          m2<1>F          g4.4<0,1,0>F    g2<8,8,1>F      { align1 1Q compacted };
pln(8)          m3<1>F          g5<0,1,0>F      g2<8,8,1>F      { align1 1Q compacted };
pln(8)          m4<1>F          g5.4<0,1,0>F    g2<8,8,1>F      { align1 1Q compacted };
sendc(8)        null<1>UW       m1<8,8,1>F
                            render RT write SIMD8 LastRT Surface = 0 mlen 4 rlen 0 { align1 1Q EOT };
   END B0

Native code for unnamed fragment shader GLSL0
SIMD16 shader: 5 instructions. 0 loops. 34 cycles. 0:0 spills:fills. Promoted 0 constants. Compacted 80 to 48 bytes (40%)
   START B0 (34 cycles)
pln(16)         m1<1>F          g6<0,1,0>F      g2<8,8,1>F      { align1 1H compacted };
pln(16)         m3<1>F          g6.4<0,1,0>F    g2<8,8,1>F      { align1 1H compacted };
pln(16)         m5<1>F          g7<0,1,0>F      g2<8,8,1>F      { align1 1H compacted };
pln(16)         m7<1>F          g7.4<0,1,0>F    g2<8,8,1>F      { align1 1H compacted };
sendc(16)       null<1>UW       m1<8,8,1>F
                            render RT write SIMD16 LastRT Surface = 0 mlen 8 rlen 0 { align1 1H EOT };
   END B0

NIR (SSA form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: BLORP-clear
inputs: 0
outputs: 0
uniforms: 0
shared: 0
decl_var shader_in INTERP_MODE_FLAT vec4 clear_color (VARYING_SLOT_VAR0, 30, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	block block_0:
	/* preds: */
	vec1 32 ssa_0 = load_const (0x00000000 /* 0.000000 */)
	vec4 32 ssa_1 = intrinsic load_input (ssa_0) () (30, 0) /* base=30 */ /* component=0 */	/* clear_color */
	intrinsic store_output (ssa_1, ssa_0) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

NIR (final form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: BLORP-clear
inputs: 0
outputs: 0
uniforms: 0
shared: 0
decl_var shader_in INTERP_MODE_FLAT vec4 clear_color (VARYING_SLOT_VAR0, 30, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	block block_0:
	/* preds: */
	vec1 32 ssa_0 = load_const (0x00000000 /* 0.000000 */)
	vec4 32 ssa_1 = intrinsic load_input (ssa_0) () (30, 0) /* base=30 */ /* component=0 */	/* clear_color */
	intrinsic store_output (ssa_1, ssa_0) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

Native code for unnamed fragment shader BLORP-clear
SIMD16 shader: 2 instructions. 0 loops. 0 cycles. 0:0 spills:fills. Promoted 0 constants. Compacted 32 to 32 bytes (0%)
   START B0 (0 cycles)
mov(4)          m2<1>F          g2.3<8,2,4>F                    { align1 WE_all 1N };
sendc(16)       null<1>UW       m2<8,8,1>F
                            render RT write SIMD16/RepData LastRT Surface = 0 mlen 1 rlen 0 { align1 1H EOT };
   END B0

