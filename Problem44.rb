def createPentagonalNumber()
    i = 0
    pentagonalList = []
    while true
    	calc = i * (3 * i - 1) / 2
        pentagonalList.unshift(calc)
	print(pentagonalList)
	i = i + 1
    end

end


createPentagonalNumber()