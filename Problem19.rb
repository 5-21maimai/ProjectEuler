require 'date'

# 月=1 火=2 水=3 木=4 金=5 土=6 日=7

def main()
    years = (1901..2000)
    months = (1..12)
    count = 0

    years.each do |y|
    	 months.each do |m|
	     if Date.new(y, m, 1).cwday == 7 then
	      	 count = count + 1
	     end
	 end
    end   
    return count
end

print(main())