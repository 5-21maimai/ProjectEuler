def countScore
    dataList = getData("names.txt", "r")
    print(dataList)
end


def getData(filename,mode)
    dataList = []
    File.open(filename,mode) do |f|
        f.each_line do |data|
	    data = data.gsub("\"","")
      	    dataList = data.split(",")
        end
    end
    return dataList
end


countScore