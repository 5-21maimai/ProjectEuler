def getData()
    dataList = []
    File.open("words.txt","r") do |f|
        f.each_line do |data|
	    wordData = data.gsub('"','')
      	    dataList =  wordData.split(',')
	end
    end
    return dataList
end


def getSankaku()
    sankakuList = []
    i = 1
    while i < 20
        sankakuList << i * (i+1) / 2
	i = i + 1
    end
    return sankakuList
end


def countLetter(str)
    score = str.split("").inject(0) do |count, n|
    	  count + (n.ord - 'A'.ord + 1) 
    end
    return score
end


def main()
    dataList = getData()
    sankakuList = getSankaku()
    count = 0
    dataList.each do |str|
        score = countLetter(str)
        count = count + 1 if sankakuList.include?(score)
    end
    print(count)
end


main()