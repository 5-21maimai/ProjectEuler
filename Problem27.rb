def checkPrime(num)
    for i in 2..num/2 do
    	if num % i == 0 then
	   return false
	end
    end
    return true
end

def createPrimeList(max)
    primeList = []
    for i in 2..max do
    	if checkPrime(i) then
	    primeList << i
	end
    end
    return primeList
end


def calc(n,a,b)
    result = n ** 2 + a * n + b
    if checkPrime(result) then
        return true
    end
    return false
end


def main()
    bList = createPrimeList(1000)
end





print(createPrimeList(13))