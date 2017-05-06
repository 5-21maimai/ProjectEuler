def createPandigital()
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    total = 0
    numbers.permutation(9) {|arr|
        total = total + checkProduct(arr)
    }
    return total
end


def checkProduct(arr)
    threeInteger = arr[0..2].join(", ").to_i
    twoInteger = arr[3..4].join(", ").to_i
    fourInteger = arr[0..3].join(", ").to_i
    oneInteger = arr[0]
    productInteger = arr[5..8].join(", ").to_i

    if(threeInteger * twoInteger == productInteger) then
        return productInteger
    elsif(fourInteger * oneInteger == productInteger) then
        return productInteger
    else
	return 0
    end

end

print(createPandigital())