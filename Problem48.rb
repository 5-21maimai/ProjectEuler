def main()
    answer = 0
    (1..1000).each do |num|
        powerResult = num ** num
	answer = answer + powerResult
    end
    print(answer.to_s[-10,10])

end


main()