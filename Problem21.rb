def sumYakusu(num)
    sum = 0
    j = num / 2
    for i in 1..j do
    	if num % i == 0 then
	   sum = sum + i
	end
    end
    return sum
end

def sumYuai(count)
    sumYuai = 0
    for a in 1..count-1 do
    	b = sumYakusu(a)
	if sumYakusu(b) == a && a != b then
	   sumYuai = sumYuai + a
	end
    end
    return sumYuai
end


print(sumYuai(10000))