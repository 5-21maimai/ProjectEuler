def calcPower()
    powerList = []
    2.upto(100) do |a|
    	2.upto(100) do |b|
	    powerList <<  a ** b
	end
    end
    print(powerList.uniq.length)
end

calcPower()
	