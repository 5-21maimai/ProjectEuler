def createNumString()
    numString = ""
    (1..1000000).each do |i|
        numString = numString + i.to_s
	if numString.length > 1000000
	    print("超えた")
	    break
	end
    end
    print(numString,"\n")

end


createNumString()