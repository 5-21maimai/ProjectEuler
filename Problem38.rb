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



def main()
    (1..9999).each do |target|
        print(calcMul(target),"\n")
    end

end

main()