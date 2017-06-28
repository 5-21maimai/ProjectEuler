require 'prime'

def main()
    provisionalSum = 0
    sum = 0
    Prime.each(1000000).to_a.each do |prime|
        provisionalSum = provisionalSum + prime

	if provisionalSum.prime?
	    sum = provisionalSum
	    print(sum,"\n")
	    next
	end
	
	#print(provisionalSum,"\n")
	break if provisionalSum >= 1000000
	
    end

    print(sum)

end


main()