def SumEachFigure(power)
    sum = 0
    result = 2 ** power
    resultStr = result.to_s
    figureList = resultStr.split("")
    
    for i in figureList do
        sum = sum + i.to_i
    end
    return sum
end

print(SumEachFigure(1000))