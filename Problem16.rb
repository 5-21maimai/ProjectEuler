def SumEachDigit(power)
    sum = 0
    resultStr = (2 ** power).to_s
    figureList = resultStr.split("")
    
    figureList.each do |i|
        sum = sum + i.to_i
    end
    return sum
end

print(SumEachDigit(1000))