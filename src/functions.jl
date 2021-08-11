function tau(n::Integer)::Integer
    ans = 0
    for i = 1:n
        if n % i == 0
            ans = 1 + ans
        end
    end
    return ans
end

τ = tau

function sigma(n::Integer)::Integer
    ans = 0
    for i = 1:n
        if n % i == 0
            ans = i + ans
        end
    end
    return ans
end

σ = sigma

function s(n::Integer)::Integer
    return sigma(n) - n
end

# Adding cache to this function can make thing easier
function getMappingFromSFunction(n::Integer)::Array{Bool}
    sn = s(n)
    mappingSofNProperty = [sn < n, sn == n, sn > n]
    return mappingSofNProperty
end

function isDeficient(n::Integer)::Bool
    return getMappingFromSFunction(n)[1]
end

function isPerfect(n::Integer)::Bool
    return getMappingFromSFunction(n)[2]
end

function isAbundant(n::Integer)::Bool
    return getMappingFromSFunction(n)[3]
end
