def createNumString()
    numString = ""
    (1..1000000).each do |i|
        numString = numString + i.to_s
	if numString.length > 1000000
	    print("超えた")
	    break
	end
    end
    return numString

end

def main()
    numString = createNumString()
    mul = numString[0].to_i * numString[9].to_i * numString[99].to_i * numString[999].to_i * numString[9999].to_i * numString[99999].to_i * numString[999999].to_i

    print(mul, "\n")

end


main()