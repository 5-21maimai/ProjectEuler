def createPanDigital()
    panList = []
    (1..9).to_a.permutation(9) do |arr|
        panList << arr.join.to_i
    end
    print(panList)

end


createPanDigital()