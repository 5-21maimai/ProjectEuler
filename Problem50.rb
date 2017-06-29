require 'prime'

def main()
    provisionalSum = 0
    sum = 0
    Prime.each(100).each do |prime|
    	print(prime,"\n")
        provisionalSum = provisionalSum + prime
	#print(provisionalSum,"\n")

	if provisionalSum.prime?
	    sum = provisionalSum
	    #print(sum,"\n")
	    next
	end
	
	#print(provisionalSum,"\n")
	if provisionalSum >= 1000 then
	    break
	end
	
    end

    print(sum)

end


main()