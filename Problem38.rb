def calcMul(target)
    digit = 0
    num = 1
    answer = ""
    while digit < 10
    	mul = target * num
	answer = answer + mul.to_s
	digit = answer.length
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
    (1..9999).each do |target|
        answer = calcMul(target)
	print(answer.length,"\n")
	if answer.length != 9
	    next
	end
	print(answer,"\n")

        if panList.include?(answer) then
	    print(answer,"\n")
	end
    end

end

main()