def checkPrime(num)
    (2..num/2).each do |i|
    	return false if num % i == 0
    end
    return true
end

def createPrimeList(max)
    primeList = []
    (2..max).each do |i|
    	primeList << i if checkPrime(i)
    end
    return primeList
end


def calc(n,a,b)
    result = n * n + a * n + b
    return true if result > 0 && checkPrime(result)
    return false
end


def countPrime(a,b)
    n = 0
    while true do
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

    (0..999).each do |a|
    	for b in bList do
    	    countPrime = countPrime(a,b)
	    if countPrime > maxPrime
	       maxPrime = countPrime
	       mulResult = a * b
	    end
	    
	    minusA = 0 - a
	    countPrime = countPrime(minusA,b)
	    if countPrime > maxPrime
               maxPrime = countPrime
	       mulResult = minusA * b
	    end

	end
    end
    print(mulResult)

end

main()