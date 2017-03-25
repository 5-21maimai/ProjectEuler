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

print(createOverList(30))