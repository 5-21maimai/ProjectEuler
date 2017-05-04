def countCoins target, coins, lastCoin=0
    return 1 if target == 0
    total = 0
    coins.each do |c|
    	next if c < lastCoin
	total += countCoins(target - c, coins, c) if (target >= c)
    end
    total

end

def main()
    coins = [1,2,5,10,20,50,100]
    target = 200
    print(countCoins(target,coins))
end

main()