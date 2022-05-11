# ScaledNumbersInput
Provides an `@SI` macro for converting numbers with SI prefixes

## Examples

```julia
julia> @SI 4.5T
4.5e12

julia> @SI values = [1.2n, 100a, 5.7G]
3-element Vector{Float64}:
 1.2e-9
 1.0e-16
 5.7e9

```

## Supported Scaling Factors

The following scaling factors are recognized:

| Scaling Symbol | Factor |
|:--------------:| ------:|
| Y | 1e24 |
| Z | 1e21 |
| E | 1e18 |
| P | 1e15 |
| T | 1e12 |
| G | 1e9 |
| M | 1e6 |
| K | 1e3 |
| k | 1e3 |
| m | 1e-3 |
| u | 1e-6 |
| μ | 1e-6 |
| n | 1e-9 |
| p | 1e-12 |
| f | 1e-15 |
| a | 1e-18 |
| z | 1e-21 |
| y | 1e-24 |

## Why not just define constants like `const M=1000000`?

That is an option but it has a downside of using
lower accuracy.  For example, compare:

```
julia> @SI 100a
1.0e-16

julia> const a = 1e-18
1.0e-18

julia> 100a
1.0000000000000001e-16
```

As you can see the `100 * 1e-18` has worse accuracy.

The other downside is defining `cost` for each of the
scaling factors uses a lot of single value variables
from your code.  With `@SI` it reads a block in and
only converts expressions with a literal number
followed by an SI scaling factor.  For example:

```jldoctest
julia> function f(k)
          c1 = k + 2k
          c2 = @SI k + 2k
          return (c1=c1, c2=c2)
       end
f (generic function with 1 method)

julia> f(10)
(c1 = 30, c2 = 2010.0)

```

Note that for `c2` the `k` in `2k` was interpreted as 2*1e3 while the preceeding `k` was not.
