using Test
using ScaledNumbersInput

@testset "@SI(val)" begin
    @test @SI(4Y) == 4e24
    @test @SI(4Z) == 4e21
    @test @SI(4E) == 4e18
    @test @SI(4P) == 4e15
    @test @SI(4T) == 4e12
    @test @SI(4G) == 4e9
    @test @SI(4M) == 4e6
    @test @SI(4K) == 4e3
    @test @SI(4k) == 4e3
    @test @SI(4m) == 4e-3
    @test @SI(4u) == 4e-6
    @test @SI(4μ) == 4e-6
    @test @SI(4n) == 4e-9
    @test @SI(4p) == 4e-12
    @test @SI(4f) == 4e-15
    @test @SI(4a) == 4e-18
    @test @SI(4z) == 4e-21
    @test @SI(4y) == 4e-24

    @test @SI(100Y) == 100e24
    @test @SI(100Z) == 100e21
    @test @SI(100E) == 100e18
    @test @SI(100P) == 100e15
    @test @SI(100T) == 100e12
    @test @SI(100G) == 100e9
    @test @SI(100M) == 100e6
    @test @SI(100K) == 100e3
    @test @SI(100k) == 100e3
    @test @SI(100m) == 100e-3
    @test @SI(100u) == 100e-6
    @test @SI(100μ) == 100e-6
    @test @SI(100n) == 100e-9
    @test @SI(100p) == 100e-12
    @test @SI(100f) == 100e-15
    @test @SI(100a) == 100e-18
    @test @SI(100z) == 100e-21
    @test @SI(100y) == 100e-24
    @test @SI(100Y) == 100e24
    @test @SI(100Z) == 100e21
    @test @SI(100E) == 100e18
    @test @SI(100P) == 100e15
    @test @SI(100T) == 100e12
    @test @SI(100G) == 100e9
    @test @SI(100M) == 100e6
    @test @SI(100K) == 100e3
    @test @SI(100k) == 100e3
    @test @SI(100m) == 100e-3
    @test @SI(100u) == 100e-6
    @test @SI(100μ) == 100e-6
    @test @SI(100n) == 100e-9
    @test @SI(100p) == 100e-12
    @test @SI(100f) == 100e-15
    @test @SI(100a) == 100e-18
    @test @SI(100z) == 100e-21
    @test @SI(100y) == 100e-24

    @test @SI(2.4Y) == 2.4e24
    @test @SI(2.4Z) == 2.4e21
    @test @SI(2.4E) == 2.4e18
    @test @SI(2.4P) == 2.4e15
    @test @SI(2.4T) == 2.4e12
    @test @SI(2.4G) == 2.4e9
    @test @SI(2.4M) == 2.4e6
    @test @SI(2.4K) == 2.4e3
    @test @SI(2.4k) == 2.4e3
    @test @SI(2.4m) == 2.4e-3
    @test @SI(2.4u) == 2.4e-6
    @test @SI(2.4μ) == 2.4e-6
    @test @SI(2.4n) == 2.4e-9
    @test @SI(2.4p) == 2.4e-12
    @test @SI(2.4f) == 2.4e-15
    @test @SI(2.4a) == 2.4e-18
    @test @SI(2.4z) == 2.4e-21
    @test @SI(2.4y) == 2.4e-24
    @test @SI(2.4Y) == 2.4e24
    @test @SI(2.4Z) == 2.4e21
    @test @SI(2.4E) == 2.4e18
    @test @SI(2.4P) == 2.4e15
    @test @SI(2.4T) == 2.4e12
    @test @SI(2.4G) == 2.4e9
    @test @SI(2.4M) == 2.4e6
    @test @SI(2.4K) == 2.4e3
    @test @SI(2.4k) == 2.4e3
    @test @SI(2.4m) == 2.4e-3
    @test @SI(2.4u) == 2.4e-6
    @test @SI(2.4μ) == 2.4e-6
    @test @SI(2.4n) == 2.4e-9
    @test @SI(2.4p) == 2.4e-12
    @test @SI(2.4f) == 2.4e-15
    @test @SI(2.4a) == 2.4e-18
    @test @SI(2.4z) == 2.4e-21
    @test @SI(2.4y) == 2.4e-24

    @test @SI(0.1Y) == 0.1e24
    @test @SI(0.1Z) == 0.1e21
    @test @SI(0.1E) == 0.1e18
    @test @SI(0.1P) == 0.1e15
    @test @SI(0.1T) == 0.1e12
    @test @SI(0.1G) == 0.1e9
    @test @SI(0.1M) == 0.1e6
    @test @SI(0.1K) == 0.1e3
    @test @SI(0.1k) == 0.1e3
    @test @SI(0.1m) == 0.1e-3
    @test @SI(0.1u) == 0.1e-6
    @test @SI(0.1μ) == 0.1e-6
    @test @SI(0.1n) == 0.1e-9
    @test @SI(0.1p) == 0.1e-12
    @test @SI(0.1f) == 0.1e-15
    @test @SI(0.1a) == 0.1e-18
    @test @SI(0.1z) == 0.1e-21
    @test @SI(0.1y) == 0.1e-24
    @test @SI(0.1Y) == 0.1e24
    @test @SI(0.1Z) == 0.1e21
    @test @SI(0.1E) == 0.1e18
    @test @SI(0.1P) == 0.1e15
    @test @SI(0.1T) == 0.1e12
    @test @SI(0.1G) == 0.1e9
    @test @SI(0.1M) == 0.1e6
    @test @SI(0.1K) == 0.1e3
    @test @SI(0.1k) == 0.1e3
    @test @SI(0.1m) == 0.1e-3
    @test @SI(0.1u) == 0.1e-6
    @test @SI(0.1μ) == 0.1e-6
    @test @SI(0.1n) == 0.1e-9
    @test @SI(0.1p) == 0.1e-12
    @test @SI(0.1f) == 0.1e-15
    @test @SI(0.1a) == 0.1e-18
    @test @SI(0.1z) == 0.1e-21
    @test @SI(0.1y) == 0.1e-24

    # Embedded in other expressions
    @test @SI(5) == 5
    @test @SI([100a, 5u, 8.2T]) == [1.0e-16, 5.0e-6, 8.2e12]
    v=0
    @SI for k in 1:3
        v += k + 1k # only second term (1k) is substituted
    end
    @test v == 3006.0

    # When no rounding should happen:
    @test @SI(0.3333333333333333m) == 0.3333333333333333e-3
    @test @SI(0.3333333333333333u) == 0.3333333333333333e-6
    @test @SI(0.3333333333333333n) == 0.3333333333333333e-9
    @test @SI(0.3333333333333333p) == 0.3333333333333333e-12
    @test @SI(0.3333333333333333f) == 0.3333333333333333e-15
    @test @SI(0.3333333333333333a) == 0.3333333333333333e-18
    @test @SI(0.3333333333333333z) == 0.3333333333333333e-21
    @test @SI(0.3333333333333333y) == 0.3333333333333333e-24
end

using Aqua
# Aqua tests
# Intervals brings a bunch of ambiquities unfortunately
Aqua.test_all(ScaledNumbersInput; ambiguities=false)

@info "Running JET..."

using JET
display(JET.report_package(ScaledNumbersInput))
