def sumEachPlace(num)
    numStr = num.to_s
    eachPlaceList = numStr.split("")
    sum = 0
    for place in eachPlaceList do
    	sum = sum + place.to_i ** 5
    end
    return sum
end

def main()
    matchNumList = []
    for num in 2..999999 do
    	sum = sumEachPlace(num)
	if num == sum then
	    matchNumList << num
	end
    end
    result = 0
    print(matchNumList)
    matchNumList.each do |i|
        result = result + i
    end
    print(result)
end


main()