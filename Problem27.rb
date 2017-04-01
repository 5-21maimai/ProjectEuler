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
    result = n * n + a * n + b
    if result > 0 && checkPrime(result) then
	return true
    end
    return false
end


def countPrime(a,b)
    n = 0
    while 0 < 1 do
    	if calc(n,a,b)
	    n = n + 1
	else
	    return n - 1
	end
    end
    return 0
end


def main()
    bList = createPrimeList(1000)
    maxPrime = 0
    mulResult = 0    

    for a in 0..999 do
    	for b in bList do
    	    countPrime = countPrime(a,b)
	    if countPrime > maxPrime
	       maxPrime = countPrime
	       mulResult = a * b
	    end
	    
	    minusA = 0 - a
	    countPrime = countPrime(minusA,b)
	    if countPrime > maxPrime
               maxPrime	  = countPrime
	       mulResult = minusA * b
	    end

	end
    end
    print(mulResult)

end

main()