Compiling fragment shader
Fragment shader compiled successfully
Compiling vertex shader
Vertex shader compiled successfully
Linking program
GLSL IR for native fragment shader 1:
(
(declare (location=0 shader_in ) vec4 gl_FragCoord)
(declare (location=2 shader_out ) vec4 gl_FragColor)
(declare (location=0 uniform ) vec2 resolution)
(declare (location=1 uniform ) float time)
( function main
  (signature void
    (parameters
    )
    (
      (declare () float i)
      (declare (temporary ) float compiler_temp)
      (declare (temporary ) float compiler_temp@2)
      (declare (temporary ) float compiler_temp@3)
      (assign  (x) (var_ref compiler_temp@3)  (expression float min (swiz x (var_ref resolution) )(swiz y (var_ref resolution) )) ) 
      (declare (temporary ) float compiler_temp@4)
      (assign  (x) (var_ref compiler_temp@4)  (expression float rcp (var_ref compiler_temp@3) ) ) 
      (declare (temporary ) float compiler_temp@5)
      (declare (temporary ) float compiler_temp@6)
      (assign  (x) (var_ref compiler_temp@5)  (expression float * (expression float floor (expression float * (constant float (40.000000)) (expression float * (expression float + (expression float * (swiz x (var_ref gl_FragCoord) )(constant float (2.000000)) ) (expression float neg (swiz x (var_ref resolution) )) ) (var_ref compiler_temp@4) ) ) ) (constant float (0.012500)) ) ) 
      (assign  (x) (var_ref compiler_temp@6)  (expression float * (expression float floor (expression float * (constant float (40.000000)) (expression float * (expression float + (expression float * (swiz y (var_ref gl_FragCoord) )(constant float (2.000000)) ) (expression float neg (swiz y (var_ref resolution) )) ) (var_ref compiler_temp@4) ) ) ) (constant float (0.012500)) ) ) 
      (declare (temporary ) float time)
      (assign  (x) (var_ref time)  (expression float * (expression float floor (expression float * (var_ref time@7) (constant float (16.000000)) ) ) (constant float (0.125000)) ) ) 
      (declare () int i@8)
      (declare () vec4 o_packed)
      (declare () float z)
      (assign  (x) (var_ref z)  (expression float lrp (constant float (2.000000)) (constant float (10.000000)) (expression float * (expression float + (expression float sin (expression float * (var_ref time) (constant float (2.000000)) ) ) (constant float (1.000000)) ) (constant float (0.500000)) ) ) ) 
      (declare (temporary ) float compiler_temp@9)
      (declare (temporary ) float compiler_temp@10)
      (assign  (x) (var_ref compiler_temp@9)  (expression float floor (expression float * (expression float + (expression float * (expression float cos (var_ref time) ) (var_ref compiler_temp@5) ) (expression float * (expression float sin (var_ref time) ) (var_ref compiler_temp@6) ) ) (var_ref z) ) ) ) 
      (assign  (x) (var_ref compiler_temp@10)  (expression float floor (expression float * (expression float + (expression float * (expression float neg (expression float sin (var_ref time) ) ) (var_ref compiler_temp@5) ) (expression float * (expression float cos (var_ref time) ) (var_ref compiler_temp@6) ) ) (var_ref z) ) ) ) 
      (declare (temporary ) float compiler_temp@11)
      (declare (temporary ) float compiler_temp@12)
      (assign  (x) (var_ref compiler_temp@11)  (expression float fract (expression float * (expression float + (expression float * (expression float cos (var_ref time) ) (var_ref compiler_temp@5) ) (expression float * (expression float sin (var_ref time) ) (var_ref compiler_temp@6) ) ) (var_ref z) ) ) ) 
      (assign  (x) (var_ref compiler_temp@12)  (expression float fract (expression float * (expression float + (expression float * (expression float neg (expression float sin (var_ref time) ) ) (var_ref compiler_temp@5) ) (expression float * (expression float cos (var_ref time) ) (var_ref compiler_temp@6) ) ) (var_ref z) ) ) ) 
      (assign  (xyzw) (var_ref o_packed)  (constant vec4 (0.000000 0.000000 0.000000 0.000000)) ) 
      (assign  (x) (var_ref i@8)  (constant int (0)) ) 
      (loop (
        (if (expression bool >= (var_ref i@8) (constant int (3)) ) (
          break
        )
        ())

        (declare (temporary ) float compiler_temp@13)
        (declare (temporary ) float compiler_temp@14)
        (assign  (x) (var_ref compiler_temp@13)  (expression float + (var_ref compiler_temp@11) (constant float (-0.500000)) ) ) 
        (assign  (x) (var_ref compiler_temp@14)  (expression float + (var_ref compiler_temp@12) (constant float (-0.500000)) ) ) 
        (declare (temporary ) vec3 compiler_temp@15)
        (declare (temporary ) float compiler_temp@16)
        (assign  (xyz) (var_ref compiler_temp@15)  (swiz yzw (var_ref o_packed) )) 
        (assign  (x) (var_ref compiler_temp@16)  (expression float * (expression float + (expression float sqrt (expression float + (expression float * (var_ref compiler_temp@14) (var_ref compiler_temp@14) ) (expression float * (var_ref compiler_temp@13) (var_ref compiler_temp@13) ) ) ) (expression float neg (expression float * (expression float abs (expression float sin (expression float + (var_ref time) (expression float + (var_ref compiler_temp@9) (expression float sin (expression float + (var_ref compiler_temp@10) (expression float i2f (var_ref i@8) ) ) ) ) ) ) ) (constant float (0.500000)) ) ) ) (constant float (60.000000)) ) ) 
        (if (expression bool == (var_ref i@8) (constant int (0)) ) (
          (assign  (x) (var_ref compiler_temp@15)  (var_ref compiler_temp@16) ) 
        )
        ())

        (if (expression bool == (var_ref i@8) (constant int (1)) ) (
          (assign  (y) (var_ref compiler_temp@15)  (var_ref compiler_temp@16) ) 
        )
        ())

        (if (expression bool == (var_ref i@8) (constant int (2)) ) (
          (assign  (z) (var_ref compiler_temp@15)  (var_ref compiler_temp@16) ) 
        )
        ())

        (assign  (xyz) (var_ref o_packed)  (var_ref compiler_temp@15) ) 
        (assign  (x) (var_ref i@8)  (expression int + (var_ref i@8) (constant int (1)) ) ) 
      ))

      (assign  (x) (var_ref compiler_temp)  (expression float sat (swiz y (var_ref o_packed) )) ) 
      (assign  (x) (var_ref compiler_temp@2)  (expression float sat (swiz z (var_ref o_packed) )) ) 
      (assign  (x) (var_ref i)  (constant float (0.000000)) ) 
      (loop (
        (if (expression bool >= (var_ref i) (constant float (32.000000)) ) (
          break
        )
        ())

        (declare (temporary ) float x)
        (assign  (x) (var_ref x)  (expression float * (expression float + (expression float * (var_ref i) (constant float (0.031250)) ) (expression float * (expression float floor (expression float * (var_ref time@7) (constant float (16.000000)) ) ) (constant float (0.125000)) ) ) (constant float (3.141593)) ) ) 
        (declare (temporary ) float compiler_temp@17)
        (assign  (x) (var_ref compiler_temp@17)  (expression float rcp (expression float * (var_ref compiler_temp@3) (constant float (1.400000)) ) ) ) 
        (declare (temporary ) float compiler_temp@18)
        (declare (temporary ) float compiler_temp@19)
        (assign  (x) (var_ref compiler_temp@18)  (expression float + (var_ref compiler_temp@5) (expression float * (expression float cos (var_ref x) ) (var_ref compiler_temp@17) ) ) ) 
        (assign  (x) (var_ref compiler_temp@19)  (expression float + (var_ref compiler_temp@6) (expression float * (expression float sin (var_ref x) ) (var_ref compiler_temp@17) ) ) ) 
        (declare (temporary ) float time@20)
        (assign  (x) (var_ref time@20)  (expression float + (expression float * (expression float floor (expression float * (var_ref time@7) (constant float (16.000000)) ) ) (constant float (0.125000)) ) (expression float * (var_ref i) (constant float (0.003000)) ) ) ) 
        (declare () int i@21)
        (declare () vec4 o_packed@22)
        (declare () float z@23)
        (assign  (x) (var_ref z@23)  (expression float lrp (constant float (2.000000)) (constant float (10.000000)) (expression float * (expression float + (expression float sin (expression float * (var_ref time@20) (constant float (2.000000)) ) ) (constant float (1.000000)) ) (constant float (0.500000)) ) ) ) 
        (declare (temporary ) float compiler_temp@24)
        (declare (temporary ) float compiler_temp@25)
        (assign  (x) (var_ref compiler_temp@24)  (expression float floor (expression float * (expression float + (expression float * (expression float cos (var_ref time@20) ) (var_ref compiler_temp@18) ) (expression float * (expression float sin (var_ref time@20) ) (var_ref compiler_temp@19) ) ) (var_ref z@23) ) ) ) 
        (assign  (x) (var_ref compiler_temp@25)  (expression float floor (expression float * (expression float + (expression float * (expression float neg (expression float sin (var_ref time@20) ) ) (var_ref compiler_temp@18) ) (expression float * (expression float cos (var_ref time@20) ) (var_ref compiler_temp@19) ) ) (var_ref z@23) ) ) ) 
        (declare (temporary ) float compiler_temp@26)
        (declare (temporary ) float compiler_temp@27)
        (assign  (x) (var_ref compiler_temp@26)  (expression float fract (expression float * (expression float + (expression float * (expression float cos (var_ref time@20) ) (var_ref compiler_temp@18) ) (expression float * (expression float sin (var_ref time@20) ) (var_ref compiler_temp@19) ) ) (var_ref z@23) ) ) ) 
        (assign  (x) (var_ref compiler_temp@27)  (expression float fract (expression float * (expression float + (expression float * (expression float neg (expression float sin (var_ref time@20) ) ) (var_ref compiler_temp@18) ) (expression float * (expression float cos (var_ref time@20) ) (var_ref compiler_temp@19) ) ) (var_ref z@23) ) ) ) 
        (assign  (xyzw) (var_ref o_packed@22)  (constant vec4 (0.000000 0.000000 0.000000 0.000000)) ) 
        (assign  (x) (var_ref i@21)  (constant int (0)) ) 
        (loop (
          (if (expression bool >= (var_ref i@21) (constant int (3)) ) (
            break
          )
          ())

          (declare (temporary ) float compiler_temp@28)
          (declare (temporary ) float compiler_temp@29)
          (assign  (x) (var_ref compiler_temp@28)  (expression float + (var_ref compiler_temp@26) (constant float (-0.500000)) ) ) 
          (assign  (x) (var_ref compiler_temp@29)  (expression float + (var_ref compiler_temp@27) (constant float (-0.500000)) ) ) 
          (declare (temporary ) vec3 compiler_temp@30)
          (declare (temporary ) float compiler_temp@31)
          (assign  (xyz) (var_ref compiler_temp@30)  (swiz yzw (var_ref o_packed@22) )) 
          (assign  (x) (var_ref compiler_temp@31)  (expression float * (expression float + (expression float sqrt (expression float + (expression float * (var_ref compiler_temp@29) (var_ref compiler_temp@29) ) (expression float * (var_ref compiler_temp@28) (var_ref compiler_temp@28) ) ) ) (expression float neg (expression float * (expression float abs (expression float sin (expression float + (var_ref time@20) (expression float + (var_ref compiler_temp@24) (expression float sin (expression float + (var_ref compiler_temp@25) (expression float i2f (var_ref i@21) ) ) ) ) ) ) ) (constant float (0.500000)) ) ) ) (constant float (60.000000)) ) ) 
          (if (expression bool == (var_ref i@21) (constant int (0)) ) (
            (assign  (x) (var_ref compiler_temp@30)  (var_ref compiler_temp@31) ) 
          )
          ())

          (if (expression bool == (var_ref i@21) (constant int (1)) ) (
            (assign  (y) (var_ref compiler_temp@30)  (var_ref compiler_temp@31) ) 
          )
          ())

          (if (expression bool == (var_ref i@21) (constant int (2)) ) (
            (assign  (z) (var_ref compiler_temp@30)  (var_ref compiler_temp@31) ) 
          )
          ())

          (assign  (xyz) (var_ref o_packed@22)  (var_ref compiler_temp@30) ) 
          (assign  (x) (var_ref i@21)  (expression int + (var_ref i@21) (constant int (1)) ) ) 
        ))

        (assign  (x) (var_ref compiler_temp)  (expression float + (var_ref compiler_temp) (expression float sat (swiz y (var_ref o_packed@22) )) ) ) 
        (assign  (x) (var_ref compiler_temp@2)  (expression float + (var_ref compiler_temp@2) (expression float sat (swiz z (var_ref o_packed@22) )) ) ) 
        (assign  (x) (var_ref i)  (expression float + (var_ref i) (constant float (1.000000)) ) ) 
      ))

      (declare (temporary ) float compiler_temp@32)
      (assign  (x) (var_ref compiler_temp@32)  (expression float + (constant float (1.000000)) (expression float * (constant float (0.200000)) (expression float abs (expression float + (expression float b2f (expression bool >= (expression float fract (expression float * (constant float (40.000000)) (var_ref compiler_temp@5) ) ) (constant float (0.500000)) ) ) (expression float neg (expression float b2f (expression bool >= (expression float fract (expression float * (constant float (40.000000)) (var_ref compiler_temp@6) ) ) (constant float (0.500000)) ) ) ) ) ) ) ) ) 
      (declare (temporary ) float compiler_temp@33)
      (declare (temporary ) float compiler_temp@34)
      (assign  (x) (var_ref compiler_temp@33)  (expression float * (expression float floor (expression float * (expression float * (constant float (0.090909)) (var_ref compiler_temp@32) ) (var_ref compiler_temp) ) ) (constant float (0.333333)) ) ) 
      (assign  (x) (var_ref compiler_temp@34)  (expression float * (expression float floor (expression float * (expression float * (constant float (0.090909)) (var_ref compiler_temp@32) ) (var_ref compiler_temp@2) ) ) (constant float (0.333333)) ) ) 
      (declare (temporary ) float compiler_temp@35)
      (declare (temporary ) float compiler_temp@36)
      (declare (temporary ) vec3 compiler_temp@37)
      (assign  (xyz) (var_ref compiler_temp@37)  (swiz xxx (expression float * (expression float + (var_ref compiler_temp@33) (var_ref compiler_temp@34) ) (constant float (0.333333)) ) )) 
      (assign  (x) (var_ref compiler_temp@35)  (expression float lrp (var_ref compiler_temp@33) (swiz x (var_ref compiler_temp@37) )(constant float (0.500000)) ) ) 
      (assign  (x) (var_ref compiler_temp@36)  (expression float lrp (var_ref compiler_temp@34) (swiz y (var_ref compiler_temp@37) )(constant float (0.600000)) ) ) 
      (assign  (x) (var_ref compiler_temp)  (var_ref compiler_temp@35) ) 
      (assign  (x) (var_ref compiler_temp@2)  (var_ref compiler_temp@36) ) 
      (assign  (x) (var_ref gl_FragColor)  (var_ref compiler_temp@35) ) 
      (assign  (y) (var_ref gl_FragColor)  (var_ref compiler_temp@36) ) 
      (assign  (z) (var_ref gl_FragColor)  (swiz z (var_ref compiler_temp@37) )) 
      (assign  (w) (var_ref gl_FragColor)  (constant float (1.000000)) ) 
    ))

)

)


NIR (SSA form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: GLSL1
inputs: 0
outputs: 0
uniforms: 28
shared: 0
decl_var uniform INTERP_MODE_NONE vec2 resolution (0, 0, 0)
decl_var uniform INTERP_MODE_NONE float time (1, 8, 0)
decl_var uniform INTERP_MODE_NONE vec4 gl_FbWposYTransform (0, 12, 0)
decl_var shader_in INTERP_MODE_SMOOTH vec4 gl_FragCoord (VARYING_SLOT_POS, 0, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	block block_0:
	/* preds: */
	vec1 32 ssa_0 = load_const (0x42200000 /* 40.000000 */)
	vec1 32 ssa_1 = load_const (0x40000000 /* 2.000000 */)
	vec1 32 ssa_2 = load_const (0x3c4ccccd /* 0.012500 */)
	vec1 32 ssa_3 = load_const (0x41800000 /* 16.000000 */)
	vec1 32 ssa_4 = load_const (0x3e000000 /* 0.125000 */)
	vec1 32 ssa_5 = load_const (0x41200000 /* 10.000000 */)
	vec1 32 ssa_6 = load_const (0x3f800000 /* 1.000000 */)
	vec1 32 ssa_7 = load_const (0x3f000000 /* 0.500000 */)
	vec1 32 ssa_8 = load_const (0x00000000 /* 0.000000 */)
	vec1 32 ssa_9 = load_const (0xbf000000 /* -0.500000 */)
	vec1 32 ssa_10 = load_const (0x42700000 /* 60.000000 */)
	vec1 32 ssa_11 = load_const (0x42000000 /* 32.000000 */)
	vec1 32 ssa_12 = load_const (0x3d000000 /* 0.031250 */)
	vec1 32 ssa_13 = load_const (0x40490fdb /* 3.141593 */)
	vec1 32 ssa_14 = load_const (0x3fb33333 /* 1.400000 */)
	vec1 32 ssa_15 = load_const (0x3b449ba6 /* 0.003000 */)
	vec1 32 ssa_16 = load_const (0x3e4ccccd /* 0.200000 */)
	vec1 32 ssa_17 = load_const (0x3dba2e8c /* 0.090909 */)
	vec1 32 ssa_18 = load_const (0x3eaaaaab /* 0.333333 */)
	vec1 32 ssa_19 = load_const (0x3f19999a /* 0.600000 */)
	vec2 32 ssa_20 = intrinsic load_uniform (ssa_8) () (0, 8) /* base=0 */ /* range=8 */	/* resolution */
	vec1 32 ssa_21 = fmin ssa_20.x, ssa_20.y
	vec1 32 ssa_22 = frcp ssa_21
	vec4 32 ssa_23 = intrinsic load_uniform (ssa_8) () (12, 16) /* base=12 */ /* range=16 */	/* gl_FbWposYTransform */
	vec2 32 ssa_24 = intrinsic load_barycentric_pixel () () (1) /* interp_mode=1 */
	vec4 32 ssa_25 = intrinsic load_interpolated_input (ssa_24, ssa_8) () (0, 0) /* base=0 */ /* component=0 */
	vec4 32 ssa_26 = load_const (0x3f000000 /* 0.500000 */, 0x3f000000 /* 0.500000 */, 0x00000000 /* 0.000000 */, 0x00000000 /* 0.000000 */)
	vec1 32 ssa_27 = fadd ssa_25.x, ssa_26.x
	vec1 32 ssa_28 = fadd ssa_25.y, ssa_26.y
	vec1 32 ssa_29 = ffma ssa_28, ssa_23.x, ssa_23.y
	vec1 32 ssa_30 = ffma ssa_27, ssa_1, -ssa_20.x
	vec1 32 ssa_31 = fmul ssa_30, ssa_22
	vec1 32 ssa_32 = fmul ssa_0, ssa_31
	vec1 32 ssa_33 = ffloor ssa_32
	vec1 32 ssa_34 = fmul ssa_33, ssa_2
	vec1 32 ssa_35 = ffma ssa_29, ssa_1, -ssa_20.y
	vec1 32 ssa_36 = fmul ssa_35, ssa_22
	vec1 32 ssa_37 = fmul ssa_0, ssa_36
	vec1 32 ssa_38 = ffloor ssa_37
	vec1 32 ssa_39 = fmul ssa_38, ssa_2
	vec1 32 ssa_40 = intrinsic load_uniform (ssa_8) () (8, 4) /* base=8 */ /* range=4 */	/* time */
	vec1 32 ssa_41 = fmul ssa_40, ssa_3
	vec1 32 ssa_42 = ffloor ssa_41
	vec1 32 ssa_43 = fmul ssa_42, ssa_4
	vec1 32 ssa_44 = load_const (0x3e800000 /* 0.250000 */)
	vec1 32 ssa_45 = fmul ssa_44, ssa_42
	vec1 32 ssa_46 = fsin ssa_45
	vec1 32 ssa_47 = fadd ssa_46, ssa_6
	vec1 32 ssa_48 = fmul ssa_47, ssa_7
	vec1 32 ssa_49 = flrp ssa_1, ssa_5, ssa_48
	vec1 32 ssa_50 = fcos ssa_43
	vec1 32 ssa_51 = fsin ssa_43
	vec1 32 ssa_52 = fmul ssa_51, ssa_39
	vec1 32 ssa_53 = ffma ssa_50, ssa_34, ssa_52
	vec1 32 ssa_54 = fmul ssa_53, ssa_49
	vec1 32 ssa_55 = ffloor ssa_54
	vec1 32 ssa_56 = fmul ssa_50, ssa_39
	vec1 32 ssa_57 = ffma -ssa_51, ssa_34, ssa_56
	vec1 32 ssa_58 = fmul ssa_57, ssa_49
	vec1 32 ssa_59 = ffloor ssa_58
	vec1 32 ssa_60 = ffract ssa_54
	vec1 32 ssa_61 = ffract ssa_58
	vec1 32 ssa_62 = fadd ssa_60, ssa_9
	vec1 32 ssa_63 = fadd ssa_61, ssa_9
	vec1 32 ssa_64 = fmul ssa_62, ssa_62
	vec1 32 ssa_65 = ffma ssa_63, ssa_63, ssa_64
	vec1 32 ssa_66 = fsqrt ssa_65
	vec1 32 ssa_67 = fadd ssa_59, ssa_1
	vec1 32 ssa_68 = fsin ssa_67
	vec1 32 ssa_69 = fadd ssa_55, ssa_68
	vec1 32 ssa_70 = fadd ssa_43, ssa_69
	vec1 32 ssa_71 = fsin ssa_70
	vec1 32 ssa_72 = ffma -abs(ssa_71), ssa_7, ssa_66
	vec1 32 ssa_73 = fmul.sat ssa_72, ssa_10
	/* succs: block_1 */
	loop {
		block block_1:
		/* preds: block_0 block_4 */
		vec1 32 ssa_74 = phi block_0: ssa_73, block_4: ssa_115
		vec1 32 ssa_75 = phi block_0: ssa_8, block_4: ssa_116
		vec1 32 ssa_76 = fge ssa_75, ssa_11
		/* succs: block_2 block_3 */
		if ssa_76 {
			block block_2:
			/* preds: block_1 */
			break
			/* succs: block_5 */
		} else {
			block block_3:
			/* preds: block_1 */
			/* succs: block_4 */
		}
		block block_4:
		/* preds: block_3 */
		vec1 32 ssa_77 = ffma ssa_75, ssa_12, ssa_43
		vec1 32 ssa_78 = fmul ssa_77, ssa_13
		vec1 32 ssa_79 = fmul ssa_21, ssa_14
		vec1 32 ssa_80 = frcp ssa_79
		vec1 32 ssa_81 = fcos ssa_78
		vec1 32 ssa_82 = ffma ssa_81, ssa_80, ssa_34
		vec1 32 ssa_83 = fsin ssa_78
		vec1 32 ssa_84 = ffma ssa_83, ssa_80, ssa_39
		vec1 32 ssa_85 = ffma ssa_75, ssa_15, ssa_43
		vec1 32 ssa_86 = fmul ssa_85, ssa_1
		vec1 32 ssa_87 = fsin ssa_86
		vec1 32 ssa_88 = fadd ssa_87, ssa_6
		vec1 32 ssa_89 = fmul ssa_88, ssa_7
		vec1 32 ssa_90 = flrp ssa_1, ssa_5, ssa_89
		vec1 32 ssa_91 = fcos ssa_85
		vec1 32 ssa_92 = fsin ssa_85
		vec1 32 ssa_93 = fmul ssa_92, ssa_84
		vec1 32 ssa_94 = ffma ssa_91, ssa_82, ssa_93
		vec1 32 ssa_95 = fmul ssa_94, ssa_90
		vec1 32 ssa_96 = ffloor ssa_95
		vec1 32 ssa_97 = fmul ssa_91, ssa_84
		vec1 32 ssa_98 = ffma -ssa_92, ssa_82, ssa_97
		vec1 32 ssa_99 = fmul ssa_98, ssa_90
		vec1 32 ssa_100 = ffloor ssa_99
		vec1 32 ssa_101 = ffract ssa_95
		vec1 32 ssa_102 = ffract ssa_99
		vec1 32 ssa_103 = fadd ssa_101, ssa_9
		vec1 32 ssa_104 = fadd ssa_102, ssa_9
		vec1 32 ssa_105 = fmul ssa_103, ssa_103
		vec1 32 ssa_106 = ffma ssa_104, ssa_104, ssa_105
		vec1 32 ssa_107 = fsqrt ssa_106
		vec1 32 ssa_108 = fadd ssa_100, ssa_1
		vec1 32 ssa_109 = fsin ssa_108
		vec1 32 ssa_110 = fadd ssa_96, ssa_109
		vec1 32 ssa_111 = fadd ssa_85, ssa_110
		vec1 32 ssa_112 = fsin ssa_111
		vec1 32 ssa_113 = ffma -abs(ssa_112), ssa_7, ssa_107
		vec1 32 ssa_114 = fmul.sat ssa_113, ssa_10
		vec1 32 ssa_115 = fadd ssa_74, ssa_114
		vec1 32 ssa_116 = fadd ssa_75, ssa_6
		/* succs: block_1 */
	}
	block block_5:
	/* preds: block_2 */
	vec1 32 ssa_117 = fmul ssa_7, ssa_33
	vec1 32 ssa_118 = ffract ssa_117
	vec1 32 ssa_119 = fge ssa_118, ssa_7
	vec1 32 ssa_120 = b2f ssa_119
	vec1 32 ssa_121 = fmul ssa_7, ssa_38
	vec1 32 ssa_122 = ffract ssa_121
	vec1 32 ssa_123 = fge ssa_122, ssa_7
	vec1 32 ssa_124 = b2f ssa_123
	vec1 32 ssa_125 = fadd ssa_120, -ssa_124
	vec1 32 ssa_126 = ffma ssa_16, abs(ssa_125), ssa_6
	vec1 32 ssa_127 = fmul ssa_17, ssa_126
	vec1 32 ssa_128 = fmul ssa_127, ssa_74
	vec1 32 ssa_129 = ffloor ssa_128
	vec1 32 ssa_130 = fmul ssa_129, ssa_18
	vec1 32 ssa_131 = load_const (0x3de38e3a /* 0.111111 */)
	vec1 32 ssa_132 = fmul ssa_131, ssa_129
	vec1 32 ssa_133 = load_const (0x3d638e3a /* 0.055556 */)
	vec1 32 ssa_134 = fmul ssa_133, ssa_129
	vec1 32 ssa_135 = flrp ssa_130, ssa_132, ssa_19
	vec4 32 ssa_136 = vec4 ssa_134, ssa_135, ssa_132, ssa_6
	intrinsic store_output (ssa_136, ssa_8) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

NIR (final form) for fragment shader:
shader: MESA_SHADER_FRAGMENT
name: GLSL1
inputs: 0
outputs: 0
uniforms: 28
shared: 0
decl_var uniform INTERP_MODE_NONE vec2 resolution (0, 0, 0)
decl_var uniform INTERP_MODE_NONE float time (1, 8, 0)
decl_var uniform INTERP_MODE_NONE vec4 gl_FbWposYTransform (0, 12, 0)
decl_var shader_in INTERP_MODE_SMOOTH vec4 gl_FragCoord (VARYING_SLOT_POS, 0, 0)
decl_var shader_out INTERP_MODE_NONE vec4 gl_FragColor (FRAG_RESULT_COLOR, 4, 0)
decl_function main returning void

impl main {
	decl_reg vec1 32 r6
	decl_reg vec1 32 r7
	block block_0:
	/* preds: */
	vec1 32 ssa_0 = load_const (0x42200000 /* 40.000000 */)
	vec1 32 ssa_1 = load_const (0x40000000 /* 2.000000 */)
	vec1 32 ssa_2 = load_const (0x3c4ccccd /* 0.012500 */)
	vec1 32 ssa_3 = load_const (0x41800000 /* 16.000000 */)
	vec1 32 ssa_4 = load_const (0x3e000000 /* 0.125000 */)
	vec1 32 ssa_5 = load_const (0x41200000 /* 10.000000 */)
	vec1 32 ssa_6 = load_const (0x3f800000 /* 1.000000 */)
	vec1 32 ssa_7 = load_const (0x3f000000 /* 0.500000 */)
	vec1 32 ssa_8 = load_const (0x00000000 /* 0.000000 */)
	vec1 32 ssa_9 = load_const (0xbf000000 /* -0.500000 */)
	vec1 32 ssa_10 = load_const (0x42700000 /* 60.000000 */)
	vec1 32 ssa_11 = load_const (0x42000000 /* 32.000000 */)
	vec1 32 ssa_12 = load_const (0x3d000000 /* 0.031250 */)
	vec1 32 ssa_13 = load_const (0x40490fdb /* 3.141593 */)
	vec1 32 ssa_14 = load_const (0x3fb33333 /* 1.400000 */)
	vec1 32 ssa_15 = load_const (0x3b449ba6 /* 0.003000 */)
	vec1 32 ssa_16 = load_const (0x3e4ccccd /* 0.200000 */)
	vec1 32 ssa_17 = load_const (0x3dba2e8c /* 0.090909 */)
	vec1 32 ssa_18 = load_const (0x3eaaaaab /* 0.333333 */)
	vec1 32 ssa_19 = load_const (0x3f19999a /* 0.600000 */)
	vec2 32 ssa_20 = intrinsic load_uniform (ssa_8) () (0, 8) /* base=0 */ /* range=8 */	/* resolution */
	vec1 32 ssa_21 = fmin ssa_20.x, ssa_20.y
	vec1 32 ssa_22 = frcp ssa_21
	vec4 32 ssa_23 = intrinsic load_uniform (ssa_8) () (12, 16) /* base=12 */ /* range=16 */	/* gl_FbWposYTransform */
	vec2 32 ssa_24 = intrinsic load_barycentric_pixel () () (1) /* interp_mode=1 */
	vec4 32 ssa_25 = intrinsic load_interpolated_input (ssa_24, ssa_8) () (0, 0) /* base=0 */ /* component=0 */
	vec4 32 ssa_26 = load_const (0x3f000000 /* 0.500000 */, 0x3f000000 /* 0.500000 */, 0x00000000 /* 0.000000 */, 0x00000000 /* 0.000000 */)
	vec1 32 ssa_27 = fadd ssa_25.x, ssa_26.x
	vec1 32 ssa_28 = fadd ssa_25.y, ssa_26.y
	vec1 32 ssa_29 = ffma ssa_28, ssa_23.x, ssa_23.y
	vec1 32 ssa_30 = ffma ssa_27, ssa_1, -ssa_20.x
	vec1 32 ssa_31 = fmul ssa_30, ssa_22
	vec1 32 ssa_32 = fmul ssa_0, ssa_31
	vec1 32 ssa_33 = ffloor ssa_32
	vec1 32 ssa_34 = fmul ssa_33, ssa_2
	vec1 32 ssa_35 = ffma ssa_29, ssa_1, -ssa_20.y
	vec1 32 ssa_36 = fmul ssa_35, ssa_22
	vec1 32 ssa_37 = fmul ssa_0, ssa_36
	vec1 32 ssa_38 = ffloor ssa_37
	vec1 32 ssa_39 = fmul ssa_38, ssa_2
	vec1 32 ssa_40 = intrinsic load_uniform (ssa_8) () (8, 4) /* base=8 */ /* range=4 */	/* time */
	vec1 32 ssa_41 = fmul ssa_40, ssa_3
	vec1 32 ssa_42 = ffloor ssa_41
	vec1 32 ssa_43 = fmul ssa_42, ssa_4
	vec1 32 ssa_44 = load_const (0x3e800000 /* 0.250000 */)
	vec1 32 ssa_45 = fmul ssa_44, ssa_42
	vec1 32 ssa_46 = fsin ssa_45
	vec1 32 ssa_47 = fadd ssa_46, ssa_6
	vec1 32 ssa_48 = fmul ssa_47, ssa_7
	vec1 32 ssa_49 = flrp ssa_1, ssa_5, ssa_48
	vec1 32 ssa_50 = fcos ssa_43
	vec1 32 ssa_51 = fsin ssa_43
	vec1 32 ssa_52 = fmul ssa_51, ssa_39
	vec1 32 ssa_53 = ffma ssa_50, ssa_34, ssa_52
	vec1 32 ssa_54 = fmul ssa_53, ssa_49
	vec1 32 ssa_55 = ffloor ssa_54
	vec1 32 ssa_56 = fmul ssa_50, ssa_39
	vec1 32 ssa_57 = ffma -ssa_51, ssa_34, ssa_56
	vec1 32 ssa_58 = fmul ssa_57, ssa_49
	vec1 32 ssa_59 = ffloor ssa_58
	vec1 32 ssa_60 = ffract ssa_54
	vec1 32 ssa_61 = ffract ssa_58
	vec1 32 ssa_62 = fadd ssa_60, ssa_9
	vec1 32 ssa_63 = fadd ssa_61, ssa_9
	vec1 32 ssa_64 = fmul ssa_62, ssa_62
	vec1 32 ssa_65 = ffma ssa_63, ssa_63, ssa_64
	vec1 32 ssa_66 = fsqrt ssa_65
	vec1 32 ssa_67 = fadd ssa_59, ssa_1
	vec1 32 ssa_68 = fsin ssa_67
	vec1 32 ssa_69 = fadd ssa_55, ssa_68
	vec1 32 ssa_70 = fadd ssa_43, ssa_69
	vec1 32 ssa_71 = fsin ssa_70
	vec1 32 ssa_72 = ffma -abs(ssa_71), ssa_7, ssa_66
	r6 = fmul.sat ssa_72, ssa_10
	r7 = imov ssa_8
	/* succs: block_1 */
	loop {
		block block_1:
		/* preds: block_0 block_4 */
		vec1 32 ssa_76 = fge r7, ssa_11
		/* succs: block_2 block_3 */
		if ssa_76 {
			block block_2:
			/* preds: block_1 */
			break
			/* succs: block_5 */
		} else {
			block block_3:
			/* preds: block_1 */
			/* succs: block_4 */
		}
		block block_4:
		/* preds: block_3 */
		vec1 32 ssa_77 = ffma r7, ssa_12, ssa_43
		vec1 32 ssa_78 = fmul ssa_77, ssa_13
		vec1 32 ssa_79 = fmul ssa_21, ssa_14
		vec1 32 ssa_80 = frcp ssa_79
		vec1 32 ssa_81 = fcos ssa_78
		vec1 32 ssa_82 = ffma ssa_81, ssa_80, ssa_34
		vec1 32 ssa_83 = fsin ssa_78
		vec1 32 ssa_84 = ffma ssa_83, ssa_80, ssa_39
		vec1 32 ssa_85 = ffma r7, ssa_15, ssa_43
		vec1 32 ssa_86 = fmul ssa_85, ssa_1
		vec1 32 ssa_87 = fsin ssa_86
		vec1 32 ssa_88 = fadd ssa_87, ssa_6
		vec1 32 ssa_89 = fmul ssa_88, ssa_7
		vec1 32 ssa_90 = flrp ssa_1, ssa_5, ssa_89
		vec1 32 ssa_91 = fcos ssa_85
		vec1 32 ssa_92 = fsin ssa_85
		vec1 32 ssa_93 = fmul ssa_92, ssa_84
		vec1 32 ssa_94 = ffma ssa_91, ssa_82, ssa_93
		vec1 32 ssa_95 = fmul ssa_94, ssa_90
		vec1 32 ssa_96 = ffloor ssa_95
		vec1 32 ssa_97 = fmul ssa_91, ssa_84
		vec1 32 ssa_98 = ffma -ssa_92, ssa_82, ssa_97
		vec1 32 ssa_99 = fmul ssa_98, ssa_90
		vec1 32 ssa_100 = ffloor ssa_99
		vec1 32 ssa_101 = ffract ssa_95
		vec1 32 ssa_102 = ffract ssa_99
		vec1 32 ssa_103 = fadd ssa_101, ssa_9
		vec1 32 ssa_104 = fadd ssa_102, ssa_9
		vec1 32 ssa_105 = fmul ssa_103, ssa_103
		vec1 32 ssa_106 = ffma ssa_104, ssa_104, ssa_105
		vec1 32 ssa_107 = fsqrt ssa_106
		vec1 32 ssa_108 = fadd ssa_100, ssa_1
		vec1 32 ssa_109 = fsin ssa_108
		vec1 32 ssa_110 = fadd ssa_96, ssa_109
		vec1 32 ssa_111 = fadd ssa_85, ssa_110
		vec1 32 ssa_112 = fsin ssa_111
		vec1 32 ssa_113 = ffma -abs(ssa_112), ssa_7, ssa_107
		vec1 32 ssa_114 = fmul.sat ssa_113, ssa_10
		r6 = fadd r6, ssa_114
		r7 = fadd r7, ssa_6
		/* succs: block_1 */
	}
	block block_5:
	/* preds: block_2 */
	vec1 32 ssa_117 = fmul ssa_7, ssa_33
	vec1 32 ssa_118 = ffract ssa_117
	vec1 32 ssa_119 = fge ssa_118, ssa_7
	vec1 32 ssa_120 = b2f ssa_119
	vec1 32 ssa_121 = fmul ssa_7, ssa_38
	vec1 32 ssa_122 = ffract ssa_121
	vec1 32 ssa_123 = fge ssa_122, ssa_7
	vec1 32 ssa_124 = b2f ssa_123
	vec1 32 ssa_125 = fadd ssa_120, -ssa_124
	vec1 32 ssa_126 = ffma ssa_16, abs(ssa_125), ssa_6
	vec1 32 ssa_127 = fmul ssa_17, ssa_126
	vec1 32 ssa_128 = fmul ssa_127, r6
	vec1 32 ssa_129 = ffloor ssa_128
	vec1 32 ssa_130 = fmul ssa_129, ssa_18
	vec1 32 ssa_131 = load_const (0x3de38e3a /* 0.111111 */)
	vec1 32 ssa_132 = fmul ssa_131, ssa_129
	vec1 32 ssa_133 = load_const (0x3d638e3a /* 0.055556 */)
	vec1 32 ssa_134 = fmul ssa_133, ssa_129
	vec1 32 ssa_135 = flrp ssa_130, ssa_132, ssa_19
	vec4 32 ssa_136 = vec4 ssa_134, ssa_135, ssa_132, ssa_6
	intrinsic store_output (ssa_136, ssa_8) () (4, 15, 0) /* base=4 */ /* wrmask=xyzw */ /* component=0 */	/* gl_FragColor */
	/* succs: block_0 */
	block block_0:
}

Native code for unnamed fragment shader GLSL1
SIMD8 shader: 122 instructions. 1 loops. 3722 cycles. 0:0 spills:fills. Promoted 8 constants. Compacted 1952 to 1776 bytes (9%)
   START B0 (334 cycles)
add(16)         g2<1>UW         g1.4<1,4,0>UW   0x11001010V     { align1 WE_all 1H };
sel.l(8)        g8<1>F          g4<0,1,0>F      g4.1<0,1,0>F    { align1 1Q compacted };
mov(1)          g110<1>F        2F                              { align1 WE_all 1N };
mul(8)          g23<1>F         g4.2<0,1,0>F    16F             { align1 1Q };
mov(8)          g7<1>UD         0x00000000UD                    { align1 1Q compacted };
mov(8)          g3<1>F          g2<8,4,1>UW                     { align1 1Q };
mov(8)          g5<1>F          g2.4<8,4,1>UW                   { align1 1Q };
math inv(8)     g9<1>F          g8<8,8,1>F      null<8,8,1>F    { align1 1Q };
rndd(8)         g24<1>F         g23<8,8,1>F                     { align1 1Q };
add(8)          g10<1>F         g3<8,8,1>F      0.5F            { align1 1Q };
add(8)          g11<1>F         g5<8,8,1>F      0.5F            { align1 1Q };
mul(8)          g25<1>F         g24<8,8,1>F     0.125F          { align1 1Q };
mul(8)          g26<1>F         g24<8,8,1>F     0.25F           { align1 1Q };
mad(8)          g13<1>F         -g4.0<0,1,0>F   g110.0<0,1,0>F  g10<4,4,1>F { align16 1Q };
mad(8)          g12<1>F         g4.4<0,1,0>F    g4.3<0,1,0>F    g11<4,4,1>F { align16 1Q };
math cos(8)     g31<1>F         g25<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g32<1>F         g25<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g27<1>F         g26<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g14<1>F         g13<8,8,1>F     g9<8,8,1>F      { align1 1Q compacted };
mad(8)          g18<1>F         -g4.1<0,1,0>F   g110.0<0,1,0>F  g12<4,4,1>F { align16 1Q };
mov(1)          g110.1<1>F      10F                             { align1 WE_all 1N };
add(8)          g28<1>F         g27<8,8,1>F     1F              { align1 1Q };
mul(8)          g15<1>F         g14<8,8,1>F     40F             { align1 1Q };
mul(8)          g19<1>F         g18<8,8,1>F     g9<8,8,1>F      { align1 1Q compacted };
mul(8)          g29<1>F         g28<8,8,1>F     0.5F            { align1 1Q };
rndd(8)         g16<1>F         g15<8,8,1>F                     { align1 1Q };
mul(8)          g20<1>F         g19<8,8,1>F     40F             { align1 1Q };
lrp(8)          g30<1>F         g29<4,4,1>F     g110.1<0,1,0>F  g110.0<0,1,0>F { align16 1Q };
mov(1)          g110.2<1>F      0.5F                            { align1 WE_all 1N };
mul(8)          g17<1>F         g16<8,8,1>F     0.0125F         { align1 1Q };
rndd(8)         g21<1>F         g20<8,8,1>F                     { align1 1Q };
mul(8)          g22<1>F         g21<8,8,1>F     0.0125F         { align1 1Q };
mul(8)          g33<1>F         g32<8,8,1>F     g22<8,8,1>F     { align1 1Q compacted };
mul(8)          g37<1>F         g31<8,8,1>F     g22<8,8,1>F     { align1 1Q compacted };
mad(8)          g34<1>F         g33<4,4,1>F     g17<4,4,1>F     g31<4,4,1>F { align16 1Q };
mad(8)          g38<1>F         g37<4,4,1>F     g17<4,4,1>F     -g32<4,4,1>F { align16 1Q };
mul(8)          g35<1>F         g34<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
mul(8)          g39<1>F         g38<8,8,1>F     g30<8,8,1>F     { align1 1Q compacted };
rndd(8)         g36<1>F         g35<8,8,1>F                     { align1 1Q };
frc(8)          g41<1>F         g35<8,8,1>F                     { align1 1Q };
rndd(8)         g40<1>F         g39<8,8,1>F                     { align1 1Q };
frc(8)          g42<1>F         g39<8,8,1>F                     { align1 1Q };
add(8)          g43<1>F         g41<8,8,1>F     -0.5F           { align1 1Q };
add(8)          g48<1>F         g40<8,8,1>F     2F              { align1 1Q };
add(8)          g44<1>F         g42<8,8,1>F     -0.5F           { align1 1Q };
mul(8)          g45<1>F         g43<8,8,1>F     g43<8,8,1>F     { align1 1Q compacted };
math sin(8)     g49<1>F         g48<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g46<1>F         g45<4,4,1>F     g44<4,4,1>F     g44<4,4,1>F { align16 1Q };
add(8)          g50<1>F         g36<8,8,1>F     g49<8,8,1>F     { align1 1Q compacted };
add(8)          g51<1>F         g25<8,8,1>F     g50<8,8,1>F     { align1 1Q compacted };
math sqrt(8)    g47<1>F         g46<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g52<1>F         g51<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g53<1>F         g47<4,4,1>F     g110.2<0,1,0>F  -(abs)g52<4,4,1>F { align16 1Q };
mul.sat(8)      g6<1>F          g53<8,8,1>F     60F             { align1 1Q };
   END B0 ->B1
   START B1 <-B0 <-B2 (20 cycles)
cmp.ge.f0(8)    null<1>F        g7<8,8,1>F      32F             { align1 1Q };
(+f0) break(8)  JIP: 78         UIP: 80                         { align1 1Q };
   END B1 ->B3 ->B2
   START B2 <-B1 (300 cycles)
mov(1)          g110.3<1>F      0.03125F                        { align1 WE_all 1N };
mul(8)          g56<1>F         g8<8,8,1>F      1.4F            { align1 1Q };
mad(8)          g54<1>F         g25<4,4,1>F     g110.3<0,1,0>F  g7<4,4,1>F { align16 1Q };
mov(1)          g110.4<1>F      0.003F                          { align1 WE_all 1N };
math inv(8)     g57<1>F         g56<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g62<1>F         g25<4,4,1>F     g110.4<0,1,0>F  g7<4,4,1>F { align16 1Q };
add(8)          g7<1>F          g7<8,8,1>F      1F              { align1 1Q };
mul(8)          g55<1>F         g54<8,8,1>F     3.14159F        { align1 1Q };
math cos(8)     g58<1>F         g55<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g60<1>F         g55<8,8,1>F     null<8,8,1>F    { align1 1Q };
mul(8)          g63<1>F         g62<8,8,1>F     2F              { align1 1Q };
math cos(8)     g68<1>F         g62<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g69<1>F         g62<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g59<1>F         g17<4,4,1>F     g57<4,4,1>F     g58<4,4,1>F { align16 1Q };
math sin(8)     g64<1>F         g63<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g61<1>F         g22<4,4,1>F     g57<4,4,1>F     g60<4,4,1>F { align16 1Q };
add(8)          g65<1>F         g64<8,8,1>F     1F              { align1 1Q };
mul(8)          g70<1>F         g69<8,8,1>F     g61<8,8,1>F     { align1 1Q compacted };
mul(8)          g74<1>F         g68<8,8,1>F     g61<8,8,1>F     { align1 1Q compacted };
mul(8)          g66<1>F         g65<8,8,1>F     0.5F            { align1 1Q };
mad(8)          g71<1>F         g70<4,4,1>F     g59<4,4,1>F     g68<4,4,1>F { align16 1Q };
mad(8)          g75<1>F         g74<4,4,1>F     g59<4,4,1>F     -g69<4,4,1>F { align16 1Q };
lrp(8)          g67<1>F         g66<4,4,1>F     g110.1<0,1,0>F  g110.0<0,1,0>F { align16 1Q };
mul(8)          g72<1>F         g71<8,8,1>F     g67<8,8,1>F     { align1 1Q compacted };
mul(8)          g76<1>F         g75<8,8,1>F     g67<8,8,1>F     { align1 1Q compacted };
rndd(8)         g73<1>F         g72<8,8,1>F                     { align1 1Q };
frc(8)          g78<1>F         g72<8,8,1>F                     { align1 1Q };
rndd(8)         g77<1>F         g76<8,8,1>F                     { align1 1Q };
frc(8)          g79<1>F         g76<8,8,1>F                     { align1 1Q };
add(8)          g80<1>F         g78<8,8,1>F     -0.5F           { align1 1Q };
add(8)          g85<1>F         g77<8,8,1>F     2F              { align1 1Q };
add(8)          g81<1>F         g79<8,8,1>F     -0.5F           { align1 1Q };
mul(8)          g82<1>F         g80<8,8,1>F     g80<8,8,1>F     { align1 1Q compacted };
math sin(8)     g86<1>F         g85<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g83<1>F         g82<4,4,1>F     g81<4,4,1>F     g81<4,4,1>F { align16 1Q };
add(8)          g87<1>F         g73<8,8,1>F     g86<8,8,1>F     { align1 1Q compacted };
add(8)          g88<1>F         g62<8,8,1>F     g87<8,8,1>F     { align1 1Q compacted };
math sqrt(8)    g84<1>F         g83<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g89<1>F         g88<8,8,1>F     null<8,8,1>F    { align1 1Q };
mad(8)          g90<1>F         g84<4,4,1>F     g110.2<0,1,0>F  -(abs)g89<4,4,1>F { align16 1Q };
mul.sat(8)      g91<1>F         g90<8,8,1>F     60F             { align1 1Q };
add(8)          g6<1>F          g6<8,8,1>F      g91<8,8,1>F     { align1 1Q compacted };
while(8)        JIP: -80                                        { align1 1Q };
   END B2 ->B1
   START B3 <-B1 (188 cycles)
mul(8)          g92<1>F         g16<8,8,1>F     0.5F            { align1 1Q };
mul(8)          g96<1>F         g21<8,8,1>F     0.5F            { align1 1Q };
mov(1)          g110.5<1>F      1F                              { align1 WE_all 1N };
mov(8)          m4<1>F          1F                              { align1 1Q };
frc(8)          g93<1>F         g92<8,8,1>F                     { align1 1Q };
frc(8)          g97<1>F         g96<8,8,1>F                     { align1 1Q };
mov(1)          g110.6<1>F      0.2F                            { align1 WE_all 1N };
cmp.ge.f0(8)    g94<1>F         g93<8,8,1>F     0.5F            { align1 1Q };
cmp.ge.f0(8)    g98<1>F         g97<8,8,1>F     0.5F            { align1 1Q };
mov(8)          g95<1>F         -g94<8,8,1>D                    { align1 1Q };
mov(8)          g99<1>F         -g98<8,8,1>D                    { align1 1Q };
add(8)          g100<1>F        g95<8,8,1>F     -g99<8,8,1>F    { align1 1Q compacted };
mad(8)          g101<1>F        g110.5<0,1,0>F  (abs)g100<4,4,1>F g110.6<0,1,0>F { align16 1Q };
mov(1)          g110.7<1>F      0.6F                            { align1 WE_all 1N };
mul(8)          g102<1>F        g101<8,8,1>F    0.0909091F      { align1 1Q };
mul(8)          g103<1>F        g102<8,8,1>F    g6<8,8,1>F      { align1 1Q compacted };
rndd(8)         g104<1>F        g103<8,8,1>F                    { align1 1Q };
mul(8)          g105<1>F        g104<8,8,1>F    0.333333F       { align1 1Q };
mul(8)          g109<1>F        g104<8,8,1>F    0.111111F       { align1 1Q };
mul(8)          m1<1>F          g104<8,8,1>F    0.0555556F      { align1 1Q };
lrp(8)          m2<1>F          g110.7<0,1,0>F  g109<4,4,1>F    g105<4,4,1>F { align16 1Q };
mov(8)          m3<1>F          g109<8,8,1>F                    { align1 1Q compacted };
sendc(8)        null<1>UW       m1<8,8,1>F
                            render RT write SIMD8 LastRT Surface = 0 mlen 4 rlen 0 { align1 1Q EOT };
   END B3

Native code for unnamed fragment shader GLSL1
SIMD16 shader: 158 instructions. 1 loops. 4360 cycles. 0:0 spills:fills. Promoted 8 constants. Compacted 2528 to 2352 bytes (7%)
   START B0 (382 cycles)
add(16)         g5<1>UW         g1.4<2,4,0>UW   0x10101010V     { align1 1H };
add(16)         g9<1>UW         g1.5<2,4,0>UW   0x11001100V     { align1 1H };
sel.l(16)       g12<1>F         g6<0,1,0>F      g6.1<0,1,0>F    { align1 1H compacted };
mov(1)          g2<1>F          2F                              { align1 WE_all 1N };
mul(16)         g30<1>F         g6.2<0,1,0>F    16F             { align1 1H };
mov(16)         g10<1>UD        0x00000000UD                    { align1 1H compacted };
mov(16)         g3<1>F          g5<8,8,1>UW                     { align1 1H };
mov(16)         g7<1>F          g9<8,8,1>UW                     { align1 1H };
math inv(8)     g14<1>F         g12<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g15<1>F         g13<8,8,1>F     null<8,8,1>F    { align1 2Q };
rndd(16)        g32<1>F         g30<8,8,1>F                     { align1 1H };
add(16)         g16<1>F         g3<8,8,1>F      0.5F            { align1 1H };
add(16)         g18<1>F         g7<8,8,1>F      0.5F            { align1 1H };
mul(16)         g34<1>F         g32<8,8,1>F     0.125F          { align1 1H };
mul(16)         g36<1>F         g32<8,8,1>F     0.25F           { align1 1H };
mad(8)          g4<1>F          -g6.0<0,1,0>F   g2.0<0,1,0>F    g16<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          -g6.0<0,1,0>F   g2.0<0,1,0>F    g17<4,4,1>F { align16 2Q };
mad(8)          g16<1>F         g6.4<0,1,0>F    g6.3<0,1,0>F    g18<4,4,1>F { align16 1Q };
mad(8)          g3<1>F          g6.4<0,1,0>F    g6.3<0,1,0>F    g19<4,4,1>F { align16 2Q };
math cos(8)     g46<1>F         g34<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g47<1>F         g35<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g48<1>F         g34<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g49<1>F         g35<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g38<1>F         g36<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g39<1>F         g37<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g7<1>F          g4<8,8,1>F      g14<8,8,1>F     { align1 1H compacted };
mad(8)          g21<1>F         -g6.1<0,1,0>F   g2.0<0,1,0>F    g16<4,4,1>F { align16 1Q };
mad(8)          g22<1>F         -g6.1<0,1,0>F   g2.0<0,1,0>F    g3<4,4,1>F { align16 2Q };
mov(1)          g2.1<1>F        10F                             { align1 WE_all 1N };
add(16)         g40<1>F         g38<8,8,1>F     1F              { align1 1H };
mul(16)         g16<1>F         g7<8,8,1>F      40F             { align1 1H };
mul(16)         g23<1>F         g21<8,8,1>F     g14<8,8,1>F     { align1 1H compacted };
mul(16)         g42<1>F         g40<8,8,1>F     0.5F            { align1 1H };
rndd(16)        g18<1>F         g16<8,8,1>F                     { align1 1H };
mul(16)         g25<1>F         g23<8,8,1>F     40F             { align1 1H };
lrp(8)          g44<1>F         g42<4,4,1>F     g2.1<0,1,0>F    g2.0<0,1,0>F { align16 1Q };
lrp(8)          g45<1>F         g43<4,4,1>F     g2.1<0,1,0>F    g2.0<0,1,0>F { align16 2Q };
mov(1)          g2.2<1>F        0.5F                            { align1 WE_all 1N };
mul(16)         g20<1>F         g18<8,8,1>F     0.0125F         { align1 1H };
rndd(16)        g27<1>F         g25<8,8,1>F                     { align1 1H };
mul(16)         g29<1>F         g27<8,8,1>F     0.0125F         { align1 1H };
mul(16)         g50<1>F         g48<8,8,1>F     g29<8,8,1>F     { align1 1H compacted };
mul(16)         g57<1>F         g46<8,8,1>F     g29<8,8,1>F     { align1 1H compacted };
mad(8)          g52<1>F         g50<4,4,1>F     g20<4,4,1>F     g46<4,4,1>F { align16 1Q };
mad(8)          g53<1>F         g51<4,4,1>F     g21<4,4,1>F     g47<4,4,1>F { align16 2Q };
mad(8)          g59<1>F         g57<4,4,1>F     g20<4,4,1>F     -g48<4,4,1>F { align16 1Q };
mad(8)          g60<1>F         g58<4,4,1>F     g21<4,4,1>F     -g49<4,4,1>F { align16 2Q };
mul(16)         g54<1>F         g52<8,8,1>F     g44<8,8,1>F     { align1 1H compacted };
mul(16)         g61<1>F         g59<8,8,1>F     g44<8,8,1>F     { align1 1H compacted };
rndd(16)        g56<1>F         g54<8,8,1>F                     { align1 1H };
frc(16)         g65<1>F         g54<8,8,1>F                     { align1 1H };
rndd(16)        g63<1>F         g61<8,8,1>F                     { align1 1H };
frc(16)         g67<1>F         g61<8,8,1>F                     { align1 1H };
add(16)         g69<1>F         g65<8,8,1>F     -0.5F           { align1 1H };
add(16)         g3<1>F          g63<8,8,1>F     2F              { align1 1H };
add(16)         g71<1>F         g67<8,8,1>F     -0.5F           { align1 1H };
mul(16)         g73<1>F         g69<8,8,1>F     g69<8,8,1>F     { align1 1H compacted };
math sin(8)     g5<1>F          g3<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g6<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g3<1>F          g74<4,4,1>F     g72<4,4,1>F     g72<4,4,1>F { align16 2Q };
mad(8)          g17<1>F         g73<4,4,1>F     g71<4,4,1>F     g71<4,4,1>F { align16 1Q };
add(16)         g7<1>F          g56<8,8,1>F     g5<8,8,1>F      { align1 1H compacted };
math sqrt(8)    g4<1>F          g3<8,8,1>F      null<8,8,1>F    { align1 2Q };
math sqrt(8)    g22<1>F         g17<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(16)         g14<1>F         g34<8,8,1>F     g7<8,8,1>F      { align1 1H compacted };
math sin(8)     g23<1>F         g14<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g3<1>F          g15<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g5<1>F          g22<4,4,1>F     g2.2<0,1,0>F    -(abs)g23<4,4,1>F { align16 1Q };
mad(8)          g6<1>F          g4<4,4,1>F      g2.2<0,1,0>F    -(abs)g3<4,4,1>F { align16 2Q };
mul.sat(16)     g8<1>F          g5<8,8,1>F      60F             { align1 1H };
   END B0 ->B1
   START B1 <-B0 <-B2 (26 cycles)
cmp.ge.f0(16)   null<1>F        g10<8,8,1>F     32F             { align1 1H };
(+f0) break(16) JIP: 114        UIP: 116                        { align1 1H };
   END B1 ->B3 ->B2
   START B2 <-B1 (350 cycles)
mov(1)          g2.3<1>F        0.03125F                        { align1 WE_all 1N };
mul(16)         g15<1>F         g12<8,8,1>F     1.4F            { align1 1H };
mad(8)          g6<1>F          g34<4,4,1>F     g2.3<0,1,0>F    g10<4,4,1>F { align16 1Q };
mad(8)          g7<1>F          g35<4,4,1>F     g2.3<0,1,0>F    g11<4,4,1>F { align16 2Q };
mov(1)          g2.4<1>F        0.003F                          { align1 WE_all 1N };
math inv(8)     g24<1>F         g15<8,8,1>F     null<8,8,1>F    { align1 1Q };
math inv(8)     g3<1>F          g16<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g16<1>F         g34<4,4,1>F     g2.4<0,1,0>F    g10<4,4,1>F { align16 1Q };
mad(8)          g17<1>F         g35<4,4,1>F     g2.4<0,1,0>F    g11<4,4,1>F { align16 2Q };
mul(16)         g14<1>F         g6<8,8,1>F      3.14159F        { align1 1H };
add(16)         g10<1>F         g10<8,8,1>F     1F              { align1 1H };
math cos(8)     g39<1>F         g16<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g41<1>F         g16<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g25<1>F         g14<8,8,1>F     null<8,8,1>F    { align1 1Q };
math cos(8)     g4<1>F          g15<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g31<1>F         g14<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g6<1>F          g15<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g22<1>F         g16<8,8,1>F     2F              { align1 1H };
math cos(8)     g40<1>F         g17<8,8,1>F     null<8,8,1>F    { align1 2Q };
math sin(8)     g42<1>F         g17<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g26<1>F         g20<4,4,1>F     g24<4,4,1>F     g25<4,4,1>F { align16 1Q };
mad(8)          g5<1>F          g21<4,4,1>F     g3<4,4,1>F      g4<4,4,1>F { align16 2Q };
mad(8)          g14<1>F         g29<4,4,1>F     g24<4,4,1>F     g31<4,4,1>F { align16 1Q };
mad(8)          g15<1>F         g30<4,4,1>F     g3<4,4,1>F      g6<4,4,1>F { align16 2Q };
math sin(8)     g24<1>F         g22<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g25<1>F         g23<8,8,1>F     null<8,8,1>F    { align1 2Q };
mul(16)         g43<1>F         g41<8,8,1>F     g14<8,8,1>F     { align1 1H compacted };
mul(16)         g50<1>F         g39<8,8,1>F     g14<8,8,1>F     { align1 1H compacted };
add(16)         g31<1>F         g24<8,8,1>F     1F              { align1 1H };
mad(8)          g45<1>F         g43<4,4,1>F     g26<4,4,1>F     g39<4,4,1>F { align16 1Q };
mad(8)          g46<1>F         g44<4,4,1>F     g5<4,4,1>F      g40<4,4,1>F { align16 2Q };
mad(8)          g52<1>F         g50<4,4,1>F     g26<4,4,1>F     -g41<4,4,1>F { align16 1Q };
mad(8)          g53<1>F         g51<4,4,1>F     g5<4,4,1>F      -g42<4,4,1>F { align16 2Q };
mul(16)         g36<1>F         g31<8,8,1>F     0.5F            { align1 1H };
lrp(8)          g38<1>F         g36<4,4,1>F     g2.1<0,1,0>F    g2.0<0,1,0>F { align16 1Q };
lrp(8)          g39<1>F         g37<4,4,1>F     g2.1<0,1,0>F    g2.0<0,1,0>F { align16 2Q };
mul(16)         g47<1>F         g45<8,8,1>F     g38<8,8,1>F     { align1 1H compacted };
mul(16)         g54<1>F         g52<8,8,1>F     g38<8,8,1>F     { align1 1H compacted };
rndd(16)        g49<1>F         g47<8,8,1>F                     { align1 1H };
frc(16)         g58<1>F         g47<8,8,1>F                     { align1 1H };
rndd(16)        g56<1>F         g54<8,8,1>F                     { align1 1H };
frc(16)         g60<1>F         g54<8,8,1>F                     { align1 1H };
add(16)         g62<1>F         g58<8,8,1>F     -0.5F           { align1 1H };
add(16)         g3<1>F          g56<8,8,1>F     2F              { align1 1H };
add(16)         g64<1>F         g60<8,8,1>F     -0.5F           { align1 1H };
mul(16)         g66<1>F         g62<8,8,1>F     g62<8,8,1>F     { align1 1H compacted };
math sin(8)     g5<1>F          g3<8,8,1>F      null<8,8,1>F    { align1 1Q };
math sin(8)     g6<1>F          g4<8,8,1>F      null<8,8,1>F    { align1 2Q };
mad(8)          g3<1>F          g67<4,4,1>F     g65<4,4,1>F     g65<4,4,1>F { align16 2Q };
mad(8)          g32<1>F         g66<4,4,1>F     g64<4,4,1>F     g64<4,4,1>F { align16 1Q };
add(16)         g14<1>F         g49<8,8,1>F     g5<8,8,1>F      { align1 1H compacted };
math sqrt(8)    g4<1>F          g3<8,8,1>F      null<8,8,1>F    { align1 2Q };
math sqrt(8)    g33<1>F         g32<8,8,1>F     null<8,8,1>F    { align1 1Q };
add(16)         g22<1>F         g16<8,8,1>F     g14<8,8,1>F     { align1 1H compacted };
math sin(8)     g36<1>F         g22<8,8,1>F     null<8,8,1>F    { align1 1Q };
math sin(8)     g3<1>F          g23<8,8,1>F     null<8,8,1>F    { align1 2Q };
mad(8)          g5<1>F          g33<4,4,1>F     g2.2<0,1,0>F    -(abs)g36<4,4,1>F { align16 1Q };
mad(8)          g6<1>F          g4<4,4,1>F      g2.2<0,1,0>F    -(abs)g3<4,4,1>F { align16 2Q };
mul.sat(16)     g14<1>F         g5<8,8,1>F      60F             { align1 1H };
add(16)         g8<1>F          g8<8,8,1>F      g14<8,8,1>F     { align1 1H compacted };
while(16)       JIP: -116                                       { align1 1H };
   END B2 ->B1
   START B3 <-B1 (218 cycles)
mul(16)         g15<1>F         g18<8,8,1>F     0.5F            { align1 1H };
mul(16)         g22<1>F         g27<8,8,1>F     0.5F            { align1 1H };
mov(1)          g2.5<1>F        1F                              { align1 WE_all 1N };
mov(16)         m7<1>F          1F                              { align1 1H };
frc(16)         g17<1>F         g15<8,8,1>F                     { align1 1H };
frc(16)         g24<1>F         g22<8,8,1>F                     { align1 1H };
mov(1)          g2.6<1>F        0.2F                            { align1 WE_all 1N };
cmp.ge.f0(16)   g19<1>F         g17<8,8,1>F     0.5F            { align1 1H };
cmp.ge.f0(16)   g26<1>F         g24<8,8,1>F     0.5F            { align1 1H };
mov(16)         g21<1>F         -g19<8,8,1>D                    { align1 1H };
mov(16)         g28<1>F         -g26<8,8,1>D                    { align1 1H };
add(16)         g30<1>F         g21<8,8,1>F     -g28<8,8,1>F    { align1 1H compacted };
mad(8)          g32<1>F         g2.5<0,1,0>F    (abs)g30<4,4,1>F g2.6<0,1,0>F { align16 1Q };
mad(8)          g33<1>F         g2.5<0,1,0>F    (abs)g31<4,4,1>F g2.6<0,1,0>F { align16 2Q };
mov(1)          g2.7<1>F        0.6F                            { align1 WE_all 1N };
mul(16)         g34<1>F         g32<8,8,1>F     0.0909091F      { align1 1H };
mul(16)         g36<1>F         g34<8,8,1>F     g8<8,8,1>F      { align1 1H compacted };
rndd(16)        g38<1>F         g36<8,8,1>F                     { align1 1H };
mul(16)         g40<1>F         g38<8,8,1>F     0.333333F       { align1 1H };
mul(16)         g3<1>F          g38<8,8,1>F     0.111111F       { align1 1H };
mul(16)         m1<1>F          g38<8,8,1>F     0.0555556F      { align1 1H };
lrp(8)          m3<1>F          g2.7<0,1,0>F    g3<4,4,1>F      g40<4,4,1>F { align16 1Q };
lrp(8)          m4<1>F          g2.7<0,1,0>F    g4<4,4,1>F      g41<4,4,1>F { align16 2Q };
mov(16)         m5<1>F          g3<8,8,1>F                      { align1 1H compacted };
sendc(16)       null<1>UW       m1<8,8,1>F
                            render RT write SIMD16 LastRT Surface = 0 mlen 8 rlen 0 { align1 1H EOT };
   END B3

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

