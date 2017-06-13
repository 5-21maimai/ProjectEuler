def createPentagonalNumber(max)
    i = 0
    pentagonalList = []
    while i < max
    	calc = i * (3 * i - 1) / 2
        pentagonalList << calc
	i = i + 1
    end
    return pentagonalList
end


def checkPentagon(max, pList)
    min = pList[max-1].to_i
    (1..max).each do |i|
        (i+1..max).each do |j|
            sum = pList[i].to_i + pList[j].to_i
	    sub = pList[j].to_i - pList[i].to_i
	    if pList.include?(sum) && pList.include?(sub)
	        print(sub,"\n")
	        if sub < min then
		    min = sub
		    print(min,"\n")		   
		end
	    end
	end
    end
    return min
end


def main()
    max = 2000
    pList = createPentagonalNumber(max)
    print(pList)
    subMin = checkPentagon(max,pList)
    print(subMin)

end


main()