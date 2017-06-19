require 'prime'


def calcPrimeDivision(num)
    return num.prime_division

end

def main()
    (1..1000000).each do |num|
        PrimeList = calcPrimeDivision(num)
    end

end


print(calcPrimeDivision(12))

main()