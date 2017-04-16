def calcFibonacci()
    count = 3
    a = 1
    b = 1
    while true do
    	 sum = a + b
	 return count if checkDigit(sum) == 1000
	 b = a
	 a = sum
	 count = count + 1
    end
end

def checkDigit(num)
    return num.to_s.split("").length
end


print(calcFibonacci())