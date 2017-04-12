def sumYakusu(num)
    sum = 0
    (1..num/2).each do |i|
    	if num % i == 0 then
	   sum = sum + i
	end
    end
    return sum
end

def sumYuai(count)
    sumYuai = 0
    (1..count-1).each do |a|
    	b = sumYakusu(a)
	if sumYakusu(b) == a && a != b && a < b then
	   sumYuai = sumYuai + a + b
	end
    end
    return sumYuai
end

print(sumYuai(10000))