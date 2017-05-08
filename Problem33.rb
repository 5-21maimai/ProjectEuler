def checkSameDigit(n,d)
    leftN = n / 10
    rightN = n % 10
    leftD = d / 10
    rightD = d % 10

    if rightN != leftD || rightD == 0
       return false
    end

    return true

end