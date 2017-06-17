# 奇合成数とは：1より大きい整数であって，素数でない奇数

def isPrime(num)
    (2..num/2).each do |i|
        if num % i == 0
	    return false
	end
    end
    return true
end


def isExpected(synthesisNum)
    i = 1
    while true
        doubleSquare = 2 * i ** 2
	if synthesisNum > doubleSquare then
	    if isPrime(synthesisNum - doubleSquare) then
	        return true
	    else
	        next
	    end
	else
	    break
	end
	i = i + 1
    end

    return false

end


print(inExpected(9))