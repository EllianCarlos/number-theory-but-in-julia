function tau(n::Integer)::Integer
    ans = 0
    for i = 1:n
        if n % i == 0
            ans = 1 + ans
        end
    end
    return ans
end

τf = tau

function sigma(n::Integer)::Integer
    ans = 0
    for i = 1:n
        if n % i == 0
            ans = i + ans
        end
    end
    return ans
end

σf = sigma

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

# Including N
function pic(n::Integer)::Integer
    numberOfPrimesTillN = 0
    for i = 2:n
        isPrime = true
        for j = 1:i
            if (i % j == 0 && i != j) || j == 1
                isPrime = false
                break
            end
        end
        if isPrime
            numberOfPrimesTillN += 1
        end
    end
    return numberOfPrimesTillN
end

# Not Including N
function pi(n::Integer)::Integer
    numberOfPrimesTillN = 0
    for i = 2:n-1
        isPrime = true
        for j = 2:i
            if (i % j == 0 && i != j)
                isPrime = false
                break
            end
        end
        if isPrime && (i != n-1)
            numberOfPrimesTillN += 1
        end
    end
    return numberOfPrimesTillN
end

πf = pi
πfc = pic

function 𝞋(n::Integer)::Float64
    value = 0.0
    for i = 2:n
        isPrime = true
        for j = 2:i
            if (i % j == 0 && i != j)
                isPrime = false
                break
            end
        end
        if isPrime && (i != n-1)
            value += log(ℯ, p)
        end
    end
    return value
end

chebyshev_theta = 𝞋

function ψ(n::Integer)::Float64
    value = 0.00
    for p = 2:n
        isPrime = true
        for j = 2:p
            if (p % j == 0 && p != j)
                isPrime = false
                break
            end
        end
        if isPrime
            pk = p^1
            sum = 0.0
            while pk <= n
                sum += log(ℯ, p)
                pk *= p
                println("ln $p")
            end
            value += sum
        end
    end
    return value
end

chebyshev_psi = ψ
