def multiplication(num)
    mul = (1..num).inject(1) {|mul, n| mul * n }
    result = sumEachFigure(mul)
    return result
end

def sumEachFigure(mul)
    sum = 0
    figureList = mul.to_s.split("")
    figureList.each do |i|
        sum = sum + i.to_i
    end
    return sum
end

print(multiplication(100))