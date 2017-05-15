def checkPrime(num)
    (2..num/2).each do |n|
        if num % n == 0 then
	    return false
        end
    end
    return true
end

def main()
    count = 0
    (2..1000000).each do |num|        
        checkFlag = true
        eachDigit = num.to_s.split("")
	if eachDigit.include?("2") || eachDigit.include?("4") || eachDigit.include?("5") || 
	    eachDigit.include?("6") || eachDigit.include?("8") || eachDigit.include?("0") then
	    next
        end
	
	eachDigit.permutation() {|arr|
	    if checkPrime(arr.join.to_i) == false
	        checkFlag = false
		next
            end
        }

	if checkFlag then
	    count = count + 1
	    print(count,num,"\n")	
        end
    end
    print(count,"\n")
end

main()