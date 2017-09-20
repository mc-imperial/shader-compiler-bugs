# Step to reproduce:

Get latest spirv-opt from https://github.com/KhronosGroup/SPIRV-Tools .
Build it, call it with options:

    spirv-opt --compact-ids --inline-entry-points-exhaustive shader.spv -o shader_opt.spv

This leads to a segfault. Checked on Linux on commit
cf85ad1429de560eb1569cf6b36ba5a4ae5ff4be of SPIRV-Tools.

The shader content seems to be irrelevant, but the shader file must be a
valid spirv file.
