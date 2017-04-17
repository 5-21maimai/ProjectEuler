def cycleCalc(num)
   rest = 1
   restList = []

   while true do
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
    (1..upper).each do |num|
        next if num % 2 == 0 || num % 5 == 0

    	if maxCount < cycleCalc(num) then
	   maxCount = cycleCalc(num)
	   answer = num
	end
    end
    return answer
end


print(searchMax(1000))