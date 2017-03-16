def multiplication(num)
    mul = 1
    for i in 1...num do
        mul = mul * i
    end
    
    result = sumEachFigure(mul)
    return result
end

def sumEachFigure(mul)
   sum = 0
    mulStr = mul.to_s
    
    figureList = mulStr.split("")
    
    for i in figureList do
        sum = sum + i.to_i
    end
    return sum
end

print(multiplication(100))