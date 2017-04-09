def countWord(max)
    count = 0
    for num in 1..max do
	count = count + createWord(num).length
    end
    return count
end

def createWord(num)
    englishList = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 
    		 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
                 18 => "eighteen",19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy",
                 80 => "eighty", 90 => "ninety" }

    return "onethousand" if num == 1000

    return englishList[num] if num < 20

    return englishList[(num / 10) * 10] + englishList[num % 10] if num >= 20 && num < 100

    return englishList[num / 100] + "hundred" if num % 100  == 0

    word = englishList[num / 100] + "hundred"
    hundredsRemainder = num % 100
    if hundredsRemainder < 20 then
       word = word + "and" + englishList[hundredsRemainder] 
       return word
    end
       
    word = word + "and" + englishList[(hundredsRemainder / 10) * 10]

    tensRemainder = hundredsRemainder % 10
    if tensRemainder != 0 then
       word = word + englishList[tensRemainder]
    end

    return word
end

print(countWord(1000))
       