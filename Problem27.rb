def checkPrime(num)
    for i in 2..num/2 do
    	if num % i == 0 then
	   return false
	end
    end
    return true
end

