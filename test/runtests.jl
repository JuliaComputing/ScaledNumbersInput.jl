using Test
using ScaledNumbersInput

@testset "SI input" begin
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
    @test @SI(5) == 5
end
