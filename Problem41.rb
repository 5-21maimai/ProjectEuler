def main()
    answer = 0
    7.downto(1).to_a.permutation(7) do |arr|
        panNum = arr.join.to_i
	if checkPrime(panNum)
	    answer = panNum
	    break
	end
    end
    print(answer)
end

def checkPrime(num)
    (2..num/2).each{|i| return false if num % i == 0}
    return true
end

main()