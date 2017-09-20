# Step to reproduce:

Get and build latest spirv-opt from https://github.com/KhronosGroup/SPIRV-Tools .

Call it with the attached shader and following options:

    spirv-opt --compact-ids --inline-entry-points-exhaustive shader.spv -o shader_opt.spv

This leads to a segfault. Checked on Linux on commit
cf85ad1429de560eb1569cf6b36ba5a4ae5ff4be of SPIRV-Tools.
