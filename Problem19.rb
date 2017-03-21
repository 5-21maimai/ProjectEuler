# 月=1 火=2 水=3 木=4 金=5 土=6 日=0
def getDays(month,year)
    if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 then
	return 31
    elsif month == 4 || month == 6 || month == 9 || month == 11 then
        return 30
    elsif year % 400 == 0 then
    	return 29
    elsif year % 100 == 0 then
    	return 28
    elsif year % 4 == 0 then
    	return 29
    else
	return 28
    end
end

def nextDate(date, month, year)
    return (date + getDays(month, year)) % 7
end


def main()
    startYear = 1900
    lastYear = 2000
    date = 1
    count = 0

    for year in startYear..lastYear do
	for month in 1..12 do
	    date = nextDate(date, month, year)
	    #print("month: ", month, " date: ", date)
	    
	    if year != 1900 && date == 0 then
	       count = count + 1
	    end
	end
    end
    return count
end

print(main())