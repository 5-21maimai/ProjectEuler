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

print(cycleCalc(3))