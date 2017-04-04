def sumEachPlace(num)
    numStr = num.to_s
    eachPlaceList = numStr.split("")
    sum = 0
    for place in eachPlaceList do
    	sum = sum + place.to_i ** 5
    end
    return sum
end






print(sumEachPlace(123))