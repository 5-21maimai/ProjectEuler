def calcSide(length)
    upperRight = length ** 2
    upperLeft = upperRight - (length - 1)
    lowerLeft = upperLeft - (length - 1)
    lowerRight = lowerLeft - (length - 1)
    sum = upperRight + upperLeft + lowerLeft + lowerRight
    return sum
end

def main()
    result = 0
    for i in 1..1001 do
    	if i == 1 then
	    result = result + 1
	elsif i % 2 != 0 then
	    result = result + calcSide(i)
	end
    end
    print(result)
end


main()