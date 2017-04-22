def calcSide(length)
    sum = 0
    target = length ** 2
    for j in 1..4 do 
        sum = sum + target
	target = target - (length - 1)
    end
    return sum
end

def main()
    result = 0
    i = 1
    while i < 1002 do
    	 if i == 1 then
             result = result + 1
	 else
	     result = result + calcSide(i)
	 end
	 i = i + 2
    end 
    print(result)
end


main()