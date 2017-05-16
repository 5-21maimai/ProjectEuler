def checkPrime(num)
    (2..num-1).each do |n|
        if num % n == 0 then
	    return false
        end
    end
    return true
end

def checkDigit(eachDigit)
    if eachDigit.include?("2") || eachDigit.include?("4") || eachDigit.include?("5") ||
       eachDigit.include?("6") || eachDigit.include?("8") || eachDigit.include?("0") then
        return false    
    end

    eachDigit.length.times do
        if checkPrime(eachDigit.join.to_i) == false
            return false
        end
	eachDigit.rotate!(1)
    end
    return true
end



def main()
    count = 3
    (6..1000000).each do |num|        
        checkFlag = true
        eachDigit = num.to_s.split("")

	if checkDigit(eachDigit) then
	    print(num,"\n")
	    count = count + 1	
        end
    end
    print(count,"\n")
end

main()