caching = [1]
function fac(n)
    if n == 0
        return 1
    elseif size(caching, 1) >= n
        return caching[n]
    end
    fac = caching[size(caching, 1)]
    for i = size(caching, 1)+1:n
        append!(caching, fac*i)
    end
    return caching[n]
end

print(fac(2))