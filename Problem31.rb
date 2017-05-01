def countCoins(target, coins)
    if coins.length == 0 then
        return 1
    end
    sum = 0
    coin = coins[0]
    selectLimit = target / coin
    0.upto(selectLimit) do |i|
    	subCoins = coins[1..coins.length-1]
        sum = sum + countCoins(target - coin * i , subCoins)
    end
    return sum
end

def main()
    coins = [200, 100, 50, 20, 10, 5, 2, 1]
    target = 200
    print(countCoins(target,coins))
end

main()