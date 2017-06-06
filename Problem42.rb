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


getData()