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
    
    if strNum[3,3].to_i % 5 != 0
        return false
    end

    if strNum[4,3].to_i % 7 != 0
        return false
    end

    if strNum[5,3].to_i % 11 != 0
        return false
    end

    if strNum[6,3].to_i % 13 != 0
        return false
    end

    if strNum[7,3].to_i % 17 != 0
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
	    count = count + strNum.to_i
	end
    end
    print(count)

end

main()