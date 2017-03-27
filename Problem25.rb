def calcFibonacci()
    count = 3
    a = 1
    b = 1
    while 0 < 1 do
    	 sum = a + b
    	 digit = checkDigit(sum)
	 if digit == 1000
	     return count 
	 end
	 b = a
	 a = sum
	 count = count + 1
    end
end


def checkDigit(num)
    numstr = num.to_s
    return numstr.split("").length
end


print(calcFibonacci())