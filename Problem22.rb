def countScore()
    dataList = getData("names22.txt", "r")
    score = dataList.inject(0) do |count, m|
	count + (dataList.index(m)+1) * countLetter(m)
    end    
    print(score)
end


def getData(filename,mode)
    dataList = []
    File.open(filename,mode) do |f|
        f.each_line do |data|
	    data = data.gsub('"','')
      	    dataList = data.split(',').sort!
        end
    end
    return dataList
end

def countLetter(str)
    score = str.split("").inject(0) do |count, n|
    	count + (n.ord - 'A'.ord + 1) 
    end
    return score
end

countScore()