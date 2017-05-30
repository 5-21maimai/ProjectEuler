def calcMul(target)
    num = 1
    answer = ""
    while true
    	mul = target * num
	answer = answer + mul.to_s
	break if answer.length >= 9
	num = num + 1
    end
    return answer
end

def createPandigital()
    panList = []
    (1..9).to_a.permutation(9){ |a|
        panDigital = a.join
	panList << panDigital
    }
    return panList
end



def main()
    panList = createPandigital()
    maxPanDigital = 0
    (1..9999).each do |target|
        answer = calcMul(target)
	answerInt = answer.to_i
	if answer.length != 9 || answerInt <= maxPanDigital
	    next
	end

        if panList.include?(answer) && maxPanDigital < answer.to_i then
	    maxPanDigital = answer.to_i
	end
    end
    print(maxPanDigital,"\n")

end

main()