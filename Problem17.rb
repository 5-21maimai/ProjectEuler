@englishList = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
    		 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
		 18 => "eighteen",19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy",
		 80 => "eighty", 90 => "ninety" }


def countWord(max)
    count = 0
    for num in 1..max do
    	word = createWord(num)
	count = count + word.length
    end
    return count
end


def createWord(num)
    if num == 1000
       return "onethousand"
    end
    
    word = ""
    hundreds = num / 100
    if hundreds != 0 then
       word = word + @englishList[hundreds] + "hundred"
    end

    hundredsRemainder = num % 100
    if hundredsRemainder == 0 then
       return word
    end

    if hundredsRemainder < 20 then
       if hundreds == 0 then
       	  word = word + @englishList[hundredsRemainder]
       else
          word = word + "and" + @englishList[hundredsRemainder] 
       end
       return word
    end
       
    tens = hundredsRemainder / 10
    if hundreds == 0 then
        word = word + @englishList[tens * 10]
    else
        word = word + "and" + @englishList[tens * 10]
    end

    tensRemainder = hundredsRemainder % 10
    if tensRemainder != 0 then
       word = word + @englishList[tensRemainder]
    end

    return word

end


print(countWord(1000))
       