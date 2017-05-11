def checkFactorial(num)
    numList = num.to_s.split("")
    sum = 0
    numList.each do |n|
	sum = sum + (1..n.to_i).inject(1) {|a, b| a * b} 
    end
    return sum
end

print(checkFactorial(4688))