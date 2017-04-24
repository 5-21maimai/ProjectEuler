def sumEachPlace(num)
    eachPlaceList = num.to_s.split("")
    return eachPlaceList.inject(0){ |sum, place| sum + place.to_i ** 5 }
end

def main()
    matchNumList = []
    2.upto(999999) do |num|
	if num == sumEachPlace(num) then
	    matchNumList << num
	end
    end
    print(matchNumList.inject(0){ |result, i| result + i })

end


main()