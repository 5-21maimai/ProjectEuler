def sumFactor(num)
    sum = 0
    for i in 1..num/2 do
    	if num % i == 0 then
	   sum = sum + i
	end
    end
    return sum
end


def createOverList(max)
    overList = []
    for n in 1..max
    	sumFactor = sumFactor(n)
	if n < sumFactor then
	    overList << n
	end
    end
    return overList
end

def checkOverList(max)
    numberList = Array.new(max+1)
    overList = createOverList(max)
    sum = 0
    count = 0

    for i in overList do
    	for j in overList do
	    if i <= j && i+j <= max then
	        numberList[i+j] = 1
	    end
	end
    end
    
    for number in numberList do
    	if number == nil
	   print(count)
	   print("\n")
	   sum = sum + count
	end
	count = count + 1
    end
    return sum
end


print(checkOverList(28123))