require 'prime'

def main()
    primeList = []
    (1000..9999).each do |i|
        primeList << i if Prime.prime?(i)
    end

    print(primeList)
end


main()