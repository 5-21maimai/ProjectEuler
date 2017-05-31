def createTriangle(num)
    count = 0
    1.upto(num / 3) do |a|
        a.upto(num / 2) do |b|
	    c = num - a - b
	    d = a**2 + b**2
	    if c**2 == d then
		count = count + 1
	    end
	end
    end
    return count

end


def main()
    maxCount = 0
    maxP = 1
    (3..1000).each do |p|
        count = createTriangle(p)
	if count > maxCount then
	    maxCount = count
	    maxP = p
	end
    end
    print(maxP)

end

main()