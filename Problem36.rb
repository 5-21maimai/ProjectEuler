def checkReversible(n)
    if n.to_s.reverse == n.to_s
        return true
    end
    return false
end



def main()
    sum = 0
    (1..1000000).each do |num|
    	if checkReversible(num) == false
            next
        end

	if checkReversible(num.to_s(2))
	    sum = sum + num
	end
    end
    print(sum)
end


main()