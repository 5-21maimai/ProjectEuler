def createHexagon(n)
    return n * (2 * n - 1)
end

def createPentagon(n)
    return n * (3 * n - 1) / 2

end


def main()
    hexagonList = []
    answer = 0
    144.upto(100000) do |n|
        hexagonList << createHexagon(n)
	pentagon = createPentagon(n)
	if hexagonList.include?(pentagon) then
	    answer = pentagon
	    break
	end
    end
    print(answer)
end


main()