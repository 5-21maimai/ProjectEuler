def countScore
    dataList = getData("names.txt", "r")
    score = dataList.inject(0) do |count, m|
        count = count + countLetter(m)
	count
    end
    
    print(score)
end


def getData(filename,mode)
    dataList = []
    File.open(filename,mode) do |f|
        f.each_line do |data|
	    data = data.gsub("\"","")
      	    dataList = data.split(",")
	    dataList.sort!
        end
    end
    return dataList
end

def countLetter(str)
    alphabet = { "A"=>1, "B"=>2, "C"=>3, "D"=>4, "E"=>5, "F"=>6, "G"=>7, "H"=>8, "I"=>9, "J"=>10, "K"=>11, "L"=>12, "M"=>13, "N"=>14, 
    	       	 "O"=>15, "P"=>16, "Q"=>17, "R"=>18, "S"=>19, "T"=>20, "U"=>21, "V"=>22, "W"=>23, "X"=>24, "Y"=>25, "Z"=>26 }

    letter = str.split("")
    score = letter.inject(0) do |count, n|
    	count = count + alphabet[n]
	count
    end
    return score
end



countScore