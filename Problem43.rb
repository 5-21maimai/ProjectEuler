def createPanDigital()
    panList = []
    (0..9).to_a.permutation(10){|arr| panList << arr.join }
    return panList

end

def checkDiv(strNum)
    if strNum[1,3].to_i % 2 != 0
        return false
    end

    if strNum[2,3].to_i % 3 != 0
        return false
    end

    return true
end


def main()
    count = 0
    panList = createPanDigital()
    panList.each do |strNum|
        if checkDiv(strNum)
	    print(strNum,"\n")
	    count = count + 1
	end
    end
    print(count)

end



main()