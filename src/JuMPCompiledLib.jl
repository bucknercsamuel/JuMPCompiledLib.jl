module JuMPCompiledLib

# Import packages
using LinearAlgebra
using JuMP, ECOS

# Basic optimization routine
Base.@ccallable function basic_opt()::Cvoid
    # Define solver
    mdl = Model(optimizer_with_attributes(ECOS.Optimizer, "verbose" => 0))

    # Opt variables
    @variable(mdl, x)

    # Constraints
    @constraint(mdl, x >= 2)

    # Cost
    @objective(mdl, Min, x^2)

    # Solve
    optimize!(mdl)

    # Print result
    println("x_opt: ")
    print(value.(x))
end

end # module
