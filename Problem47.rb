require 'prime'


def calcPrimeDivision(num)
    return num.prime_division

end

def main()
    (1..1000000).each do |num|
        flag = true
	n = num
        4.times do |first|
	    primeDivisionList = calcPrimeDivision(n)
	    if primeDivisionList.size() != 4
	        flag = false
		break
	    end
	    n = n + 1
	end
	
	if flag
	    print(num,"\n")
	    break
	end

    end

end


main()