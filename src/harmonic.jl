using Base.MathConstants

function getHarmonicNumber(n::Integer)::Float64
    H = 0
    for i = 1:n
        H = H + (1 / i)
    end
    return H
end

function getHarmonicNumberWithOrder(n::Integer, order::Integer)::Float64
    H = 0
    for i = 1:n
        H = H + (1 / i^order)
    end
    return H
end

eulermascheroni = convert(Float64, γ)