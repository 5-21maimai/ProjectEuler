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
    (1..9).permutation(9){ |a|
        panDigital = a.join
	panList << panDigital
    end
    return panList

end



def main()
    (1..9999).each do |target|
        print(calcMul(target),"\n")
    end

end

main()