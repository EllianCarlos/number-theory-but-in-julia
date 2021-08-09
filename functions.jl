function tau(x::Integer)::Integer
	ans = 0
	for i = 1:x
		if x % i == 0
			ans = 1 + ans
		end
	end
	return ans
end

τ = tau

function sigma(x::Integer)::Integer
	ans = 0
	for i = 1:x
		if x % i == 0
			ans = i + ans
		end
	end
	return ans
end

σ = sigma

function s(x::Integer)::Integer
	return sigma(x) - x
end

# Adding cache to this function can make thing easier
function getMappingFromFunction(n::Integer)::Array{Bool}
	sn = s(n)
	mappingSofNProperty = [sn < n,sn == n,sn > n]
	return mappingSofNProperty
end

function isDeficient(x::Integer)::Bool
	return getMappingFromFunction(x)[1]
end

function isAbundant(x::Integer)::Bool
	return getMappingFromFunction(x)[2]	
end

function isPerfect(x::Integer)::Bool
	return getMappingFromFunction(x)[3]
end

# print(sigma(10))