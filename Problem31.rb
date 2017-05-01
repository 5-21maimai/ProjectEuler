def countCoins(target, coins, lastCoin = 0)
    return 1 if target == 0
    total = 0

    coins.each do |c|
    	next if c < lastCoin
	total += countCoins(coins, target - c, c) if (target >= c)
    end
    return total

end

def main()
    coins = [200, 100, 50, 20, 10, 5, 2, 1]
    target = 200
    print(countCoins(target,coins))
end

main()