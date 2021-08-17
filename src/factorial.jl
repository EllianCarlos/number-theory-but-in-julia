caching_fac = [1]
function fac(n)
    if n == 0
        return 1
    elseif size(caching_fac, 1) >= n
        return caching_fac[n]
    end
    fac = caching_fac[size(caching_fac, 1)]
    for i = size(caching_fac, 1)+1:n
        append!(caching_fac, fac * i)
    end
    return caching_fac[n]
end

function stirlingNumber(m, k)
    if k > m || k < 0 || (m > 0 && k == 0)
        return 0
    elseif m == 0 && k == 0
        return 1
    else
        return k * stirlingNumber(m - 1, k) + stirlingNumber(m - 1, k - 1)
    end
end
