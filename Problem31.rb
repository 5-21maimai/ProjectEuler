def countCoins(target, coins)
    sum = 0
    coin = coin[0]
    selectLimit = target / coin
    0.upto(selectLimit) do |i|
    	 s = s + countCoins(target / i , coins)
    end

    print(s)


end

def main()
    coins = [200, 100, 50, 20, 10, 5, 2, 1]
    target = 200
    countCoins(target,coins)
end