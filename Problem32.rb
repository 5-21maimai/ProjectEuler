def createPandigital()
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    numbers.permutation(9) {|arr|
        print(arr)
    }

end


def checkProduct(arr)
    3arr = arr[0..2]
    2arr = arr[3..4]
    productArr = arr[5..8]

end

createPandigital()