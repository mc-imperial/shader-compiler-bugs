Running this shader through get\_image from
[get-image-egl](https://github.com/graphicsfuzz/get-image-egl)
using the swiftshader version of the libraries causes a segfault.

The following is the valgrind output for this when run with swiftshader
compiled from bf7a8145635e7dc6625596be127733ac7418cf21 and get\_image
compiled from 936f0d26452d3c52a0b8552be77cc6798f99bcd7

```
Invalid read of size 4
   at 0x52E152E: TIntermOperator::getOp() const (intermediate.h:461)
   by 0x52F2EEB: glsl::OutputASM::loopCount(TIntermLoop*) (OutputASM.cpp:3524)
   by 0x52EAB8F: glsl::OutputASM::visitLoop(Visit, TIntermLoop*) (OutputASM.cpp:1646)
   by 0x53389F9: TIntermLoop::traverse(TIntermTraverser*) (IntermTraverse.cpp:270)
   by 0x53385AF: TIntermAggregate::traverse(TIntermTraverser*) (IntermTraverse.cpp:169)
   by 0x53385AF: TIntermAggregate::traverse(TIntermTraverser*) (IntermTraverse.cpp:169)
   by 0x52E37AC: glsl::OutputASM::emitShader(glsl::OutputASM::Scope) (OutputASM.cpp:352)
   by 0x52E375A: glsl::OutputASM::output() (OutputASM.cpp:344)
   by 0x530DAE2: TranslatorASM::translate(TIntermNode*) (TranslatorASM.cpp:28)
   by 0x52C3798: TCompiler::compile(char const* const*, int, int) (Compiler.cpp:153)
   by 0x5131073: es2::Shader::compile() (Shader.cpp:213)
   by 0x513D65B: es2::CompileShader(unsigned int) (libGLESv2.cpp:779)
 Address 0x60 is not stack'd, malloc'd or (recently) free'd


Process terminating with default action of signal 11 (SIGSEGV)
 Access not within mapped region at address 0x60
   at 0x52E152E: TIntermOperator::getOp() const (intermediate.h:461)
   by 0x52F2EEB: glsl::OutputASM::loopCount(TIntermLoop*) (OutputASM.cpp:3524)
   by 0x52EAB8F: glsl::OutputASM::visitLoop(Visit, TIntermLoop*) (OutputASM.cpp:1646)
   by 0x53389F9: TIntermLoop::traverse(TIntermTraverser*) (IntermTraverse.cpp:270)
   by 0x53385AF: TIntermAggregate::traverse(TIntermTraverser*) (IntermTraverse.cpp:169)
   by 0x53385AF: TIntermAggregate::traverse(TIntermTraverser*) (IntermTraverse.cpp:169)
   by 0x52E37AC: glsl::OutputASM::emitShader(glsl::OutputASM::Scope) (OutputASM.cpp:352)
   by 0x52E375A: glsl::OutputASM::output() (OutputASM.cpp:344)
   by 0x530DAE2: TranslatorASM::translate(TIntermNode*) (TranslatorASM.cpp:28)
   by 0x52C3798: TCompiler::compile(char const* const*, int, int) (Compiler.cpp:153)
   by 0x5131073: es2::Shader::compile() (Shader.cpp:213)
   by 0x513D65B: es2::CompileShader(unsigned int) (libGLESv2.cpp:779)
```
