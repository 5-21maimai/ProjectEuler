def createHexagon(n)
    return n * (2 * n - 1)
end


def main()
    144.upto(200) do |n|
        hexagon = createHexagon(n)
	print(hexagon,"\n")
    end

end


main()