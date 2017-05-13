def checkFactorial(num)
    numList = num.to_s.split("")
    sum = 0
    numList.each do |n|
	sum = sum + (1..n.to_i).inject(1) {|a, b| a * b} 
    end
    return sum
end

def main()
    answer = 0
    (1..99999).each do |num|
        if checkFactorial(num) == num then
	    answer = answer + num
	end
    end
    print(answer - 3)    
end

main()