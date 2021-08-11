function isPowerOfTwo(n::Integer)::Bool
    return (n != 0) && (n & (n - 1)) == 0;
end

function isMersenneNumber(n::Integer)::Bool
    return isPowerOfTwo(n+1)
end

function getMersenneNumber(n::Integer)::Integer
    return 2^n-1
end
