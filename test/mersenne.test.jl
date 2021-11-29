using Test
using NumberTheory

@testset "Mersenne Numbers" begin
    # Tests for the isPowerOfTwoFunction
    @test isPowerOfTwo(4) == true
    @test isPowerOfTwo(256) == true
    @test isPowerOfTwo(1024) == true
    @test isPowerOfTwo(1073741824) == true
    @test isPowerOfTwo(1073741825) == false
    @test isPowerOfTwo(1073741823) == false
    @test isPowerOfTwo(1) == true
    @test isPowerOfTwo(0) == false
    
    # Tests for the isMersenneNumber
    @test isMersenneNumber(2) == false
    @test isMersenneNumber(1073741824) == false
    @test isMersenneNumber(1073741823) == true
    @test isMersenneNumber(131071) == true
    
    # Tests for the getMersenneNumber
    @test getMersenneNumber(17) == 131071	
    @test getMersenneNumber(1) == 1	
    @test getMersenneNumber(5) == 31	
end
