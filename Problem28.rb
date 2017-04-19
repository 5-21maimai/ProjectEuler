def calcSide(length)
    sum = 0
    target = length ** 2
    for j in 1..4 do 
        sum = sum + target
	target = target - (length - 1)
    end
    return sum
end

def main()
    result = 0
    (1..1001).each do |i|
    	if i == 1 then
	    result = result + 1
	elsif i % 2 != 0 then
	    result = result + calcSide(i)
	end
    end
    print(result)
end


main()