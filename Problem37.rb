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
    if snum[snum.length-1, 1] != 3 || snum[snum.length-1, 1] != 7
        print(snum[snum.length-1,1],"\n")
        return false
    end

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
    print(snum[0,1],"\n")
    if snum[0, 1] == 1 || snum[0, 1] == 4 || snum[0, 1] == 6 || snum[0, 1] == 8 || snum[0, 1] == 9
        return false
    end

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