def checkPrime(stringNum)
    num = stringNum.to_i
    if num == 1
        return false
    end
    (2..num/2).each do |i|
        if num % i == 0
	    return false
        end
    end
    return true
end

def calcLeftSlice(num)
    snum = num.to_s
    while snum != ""
    	if checkPrime(snum) == false
	    return false
	end
	snum.slice!(0)
    end
    return true
end

def calcRightSlice(num)
    snum = num.to_s
    while snum != ""
        if checkPrime(snum) == false
	    return false
	end
	snum.slice!(snum.length - 1)
    end
    return true
end


def main()
    sum = 0
    (8..100000).each do |num|
	if calcLeftSlice(num) == false
	    next
	end
	if calcRightSlice(num) == false
	    next
	end
	print(num,"\n")
	sum = sum + num
    end
    print(sum)

end




main()