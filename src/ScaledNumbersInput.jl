module ScaledNumbersInput

export @SI

const si_scaling_orders = Dict{Symbol,Int}(
    :Y => 24,
    :Z => 21,
    :E => 18,
    :P => 15,
    :T => 12,
    :G => 9,
    :M => 6,
    :K => 3,
    :k => 3,
    Symbol("") => 0,
    :m => -3,
    :u => -6,
    :μ => -6,
    :n => -9,
    :p => -12,
    :f => -15,
    :a => -18,
    :z => -21,
    :y => -24,
)

const SI_syms = keys(si_scaling_orders)

si_scale!(any) = any
function si_scale!(t::T) where T<:Tuple
    for ti in t
        si_scale!(ti)
    end
end
function si_scale!(expr::Expr)
    # 2: Expr
    #   head: Symbol call
    #   args: Array{Any}((3,))
    #     1: Symbol *
    #     2: Int64 10
    #     3: Symbol u
    if expr.head == :call &&
            length(expr.args) == 3 &&
            expr.args[1] == :(*) &&
            expr.args[2] isa Real &&
            expr.args[3] in SI_syms
        if si_scaling_orders[expr.args[3]] < 0
            # To reduce floating point errors (since 10.0^-x is not exactly 1/10^x)
            expr.args[1] = :/
        end
        expr.args[3] = exp10(abs(si_scaling_orders[expr.args[3]]))
    end
    # Recurse
    for arg in expr.args
        si_scale!(arg)
    end
    return expr
end

"""
    @SI expression
Searches through expression to replace Reals followed by an SI
scaling symbol and returns the scaled number (with improved
accuracy).

# Examples
```jldoctest
julia> @SI values = [1.2n, 100a, 5.7G]
3-element Vector{Float64}:
 1.2e-9
 1.0e-16
 5.7e9

```
"""
macro SI(exprs...)
    bl = Expr(:block)
    for expr in exprs
        si_scale!(expr)
        push!(bl.args, expr)
    end
    return esc(bl)
end

end # module