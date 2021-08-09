function tau(x::Integer)::Integer
	ans = 0
	for i = 1:x
		if x % i == 0
			ans = 1 + ans
		end
	end
	return asn
end

τ = tau

function sigma(x::Integer)::Integer
	ans = 0
	for i = 1:x
		if x % i == 0
			ans = i + ans
		end
	end
	return asn
end

σ = sigma

function s(x::Integer)::Integer
	return sigma(x) - x
end

