def create_pandigital()
  pan_list = []
  (0..9).to_a.permutation(10){|arr| pan_list << arr.join }
  return pan_list
end

def check_div(str_num)
    [2, 3, 5, 7, 11, 13, 17].each_with_index { |denom, i| return false if str_num[i+1,3].to_i % denom != 0 }
    return true
end


def main()
    answer = create_pandigital().inject(0){ |count, str_num| check_div(str_num)? count + str_num.to_i : count }
    puts answer
end

main()