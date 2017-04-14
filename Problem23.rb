def createFactorList(num)
    factorList = []
    (1..num/2).each do |i|
    	if num % i == 0 then
	   factorList << i
	end
    end
    return factorList
end

def sumList(list)
    return list.inject(0){ |sum, j| sum + j }
end


def createAbundantNumberList(max)
    abundantNumberList = []
    (1..max).each do |n|
    	sumFactor = sumList(createFactorList(n))
	if n < sumFactor then
	    abundantNumberList << n
	end
    end
    return abundantNumberList
end

def checkAbundantNumberList(max)
    numberList = Array.new(max+1)
    abundantNumberList = createAbundantNumberList(max)
    sum = 0
    count = 0

    for i in abundantNumberList do
    	for j in abundantNumberList do
	    if i <= j && i+j <= max then
	        numberList[i+j] = 1
	    end
	end
    end
    
    for number in numberList do
    	if number == nil
	   sum = sum + count
	end
	count = count + 1
    end
    return sum
end


print(checkAbundantNumberList(28123))