# for testing, cd into JuMPCompiledLib folder and run as follows:
# julia --startup-file=no --project=. build/generate_precompile.jl
# Note: to see help for Julia flags use julia -h, or julia --help-hidden.

using JuMPCompiledLib

# enable debug printing
# ENV["JULIA_DEBUG"]=JuMPCompiledLib

JuMPCompiledLib.basic_opt()

