def checkSameDigit(n,d)
    leftN = n / 10
    rightN = n % 10
    leftD = d / 10
    rightD = d % 10

    if rightD == 0
        return false
    elsif leftD == rightN
        return leftN/rightD.to_f == n/d.to_f
    elsif rightD == leftN
    	return rightN/leftD.to_f == n/d.to_f
    elsif rightD == rightN
    	return leftN/leftD.to_f == n/d.to_f
    else
        return false
    end
end


def main()
    numerator = 1
    denominator = 1
    (10..98).each do |n|
        (n+1 .. 99).each do |d|
	    if checkSameDigit(n,d)
	     	print(n,d,"\n")
		numerator = numerator * n
		denominator = denominator * d
	    end
	end
    end
    print(Rational(numerator,denominator).denominator)

end

main()