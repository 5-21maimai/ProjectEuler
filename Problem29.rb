def calcPower(a,b)
    power = a ** b
    return power
end

def main()
    powerList = []
    for a in 2..100
    	for b in 2..100
	    power = calcPower(a,b)
	    if powerList.include?(power) == false then
	         powerList << power
	    end
	end
    end
    
    print(powerList.length)
end

main()
	