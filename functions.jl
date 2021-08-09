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
function getMappingFromFunction(n::Integer)::Array{Boolean}
	sn = s(n)
	mappingSofNProperty = [
		sn < n,
		sn == n,
		sn > n,
	]
	return mappingofNSProperty
end

function isDeficient(x::Integer)::Boolean
	return getMappingFromFunction(n)[1]
end

function isAbundant(x::Integer)::Boolean
	return getMappingFromFunction(n)[2]	
end

function isPerfect(x::Integer)::Boolean
	return getMappingFromFunction(n)[3]
end

sigma(12)