require 'prime'

def main()
    sum = 0
    Prime.each(100) do |prime|
        provisionalSum = sum + prime
	if provisionalSum.prime? == false
	    sum = provisionalSum
	    next
	end

	break if provisionalSum >= 100
	
	sum = provisionalSum
    end

    print(sum)

end


main()