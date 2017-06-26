require 'prime'

def main()
    primeList = createPrimeList
    
    (1..primeList.size()-1).each do |a|
        (a+1..primeList.size()).each do |b|
	    firstNumber = primeList[a-1]
	    secondNumber = primeList[b-1]
	    thirdNumber = secondNumber + secondNumber - firstNumber

	    if primeList.include?(thirdNumber) then
	        if isSameDigit(firstNumber,secondNumber,thirdNumber)
		    print(firstNumber,secondNumber,thirdNumber)
		end
	    end
	end
    end
    
end

def createPrimeList()
    primeList = []
    (1000..9999).each do |i|
        primeList << i if Prime.prime?(i)
    end
    return primeList
end


def isSameDigit(firstNumber,secondNumber,thirdNumber)
    firstDigit = firstNumber.to_s.split("")
    secondDigit = secondNumber.to_s.split("")
    thirdDigit = thirdNumber.to_s.split("")
    if firstDigit.sort != secondDigit.sort
	return false
    end

    if secondDigit.sort != thirdDigit.sort
        return false
    end
    return true
end




main()