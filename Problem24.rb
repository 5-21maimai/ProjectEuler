def getPermutation(num)
    count = 1
    answer = ""
    (0..9).to_a.permutation(10) do |arr|
    	if count == num then
	    arr.each { |i| answer = answer + i.to_s }
	    return answer
	end
	count = count + 1
    end
    return answer
end

print(getPermutation(1000000))