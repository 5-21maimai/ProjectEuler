require 'prime'

def main()
    primeList = []
    (1000..9999).each do |i|
        primeList << i if Prime.prime?(i)
    end
    
    (1..primeList.size()-1).each do |a|
        (a+1..primeList.size()).each do |b|
	    firstNumber = primeList[a-1]
	    secondNumber = primeList[b-1]
	    thirdNumber = secondNumber + secondNumber - firstNumber

	    if primeList.include?(thirdNumber) then
	        # sortして３つの数が一致するか調べるコード
	    end
	end
    end
    
end




main()