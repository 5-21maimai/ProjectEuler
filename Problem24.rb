def getPermutation(num)
    count = 1
    answer = ""
    numberList = [0,1,2,3,4,5,6,7,8,9]
    numberList.permutation(10) do |i|
    	if count == num then
	    for item in i do
		answer = answer + item.to_s
	    end
	    return answer
	end
	count = count + 1
    end
    return answer
end

print(getPermutation(1000000))