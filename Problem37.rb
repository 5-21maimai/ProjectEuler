def checkPrime(num)
    (2..num/2).each do |i|
        if num % i == 0
	    return false
        end
    end
    return true
end


def main()
    (8..100).each do |num|
        print(sum.to_s.slice!(0),"\n")

    end

end


main()