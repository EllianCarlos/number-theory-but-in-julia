function fac(n)
    if n == 1 || n == 0
        return 1
    end
    return n*fac(n)
end