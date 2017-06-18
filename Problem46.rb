# 奇合成数とは：1より大きい整数であって，素数でない奇数

def isPrime(num)
    return false if num == 1
    (2..num/2).each do |i|
        if num % i == 0
	    return false
	end
    end
    return true
end


def isExpected(synthesisNum)
    i = 0
    while true
    	i = i + 1
        doubleSquare = 2 * i ** 2
	break if doubleSquare > synthesisNum

	if isPrime(synthesisNum - doubleSquare) then
	    return true
	else
	    next
	end
    end
    return false
end

def main()
    num = 33
    while true
        num = num + 2
	next if isPrime(num) == true
	break if isExpected(num) == false
    end
    print(num)

end

main()