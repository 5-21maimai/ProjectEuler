def sumEachPlace(num)
    eachPlaceList = num.to_s.split("")
    sum = 0
    for place in eachPlaceList do
    	sum = sum + place.to_i ** 5
    end
    return sum
end

def main()
    matchNumList = []
    2.upto(999999) do |num|
    	sum = sumEachPlace(num)
	if num == sum then
	    matchNumList << num
	end
    end
    matchNumList.inject(0){ |result, i| result + i }
    print(result)
end


main()