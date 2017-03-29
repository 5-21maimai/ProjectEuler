def cycleCalc(num)
   rest = 1
   restList = []

   while 0 < 1 do
       rest = (rest * 10) % num
       if rest == 0 || restList.include?(rest) then
       	   return restList.length
       end
       restList << rest 
   end
end


def searchMax(upper)
    maxCount = 1
    answer = 0
    for num in 1..upper do
    	if maxCount < cycleCalc(num) then
	   maxCount = cycleCalc(num)
	   answer = num
	end
    end
    return answer
end


print(searchMax(1000))