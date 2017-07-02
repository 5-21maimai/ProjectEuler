max = 1000000
prime = Array.new(max, 1)
prime[0..1] = [0, 0]
i = 2
while i < Math.sqrt(max).to_i + 1 do
      (i + i).step(max, i){|x| prime[x] = 0}
      i += prime[(i + 1)..max].index(1) + 1
end

len = 0
ans = 0
array = prime.each_index{|i|
      prime[i] = i unless prime[i].zero?
}.select{|x| !x.zero? }
array.each_index{|i|
	count = 0
	array[i...array.size].inject(0) {|s, x|
	    s += x
	    break if s >= max
	    count += 1
	    ans, len = s, [len, count].max if !prime[s].zero? && len < count
	    s
	 }
}
puts ans