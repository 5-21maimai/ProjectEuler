def main(a,b)
    num = a + b
    answer = 1
    while num > a
       answer = answer * (num / (num - a))
       num = num - 1
    end
    print(answer)
end

main(3,2)