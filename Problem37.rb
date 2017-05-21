def checkPrime(stringNum)
    num = stringNum.to_i
    (2..num/2).each do |i|
        if num % i == 0
	    return false
        end
    end
    return true
end

def calcSlice(num)
    snum = num.to_s
    while snum != ""
    	if checkPrime(snum) == false
	    return false
	end
	snum.slice!(0)
    end
    return true
end


def main()
    sum = 0
    (8..100).each do |num|
	if calcSlice(num) == true
	    sum = sum + num
	end
    end
    print(sum)

end




main()