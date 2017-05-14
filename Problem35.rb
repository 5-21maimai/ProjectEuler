def checkPrime(num)
    (2..num/2).each do |n|
        if num % n == 0 then
	    return false
        end
    end
    return true
end

def main()
    (1..10000).each do |num|
        checkFlag = true
        eachDigit = num.to_s.split("")
	eachDigit.permutation() {|arr|
	    if checkPrime(arr.join.to_i) == false
	        checkFlag = false
            end
        }

	if checkFlag then
	    print(num,"\n")	
        end
    end

end

main()