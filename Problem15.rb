def countRoot(a,b)
    num = a + b
    answer = 1
    while num > a
       answer = answer * (num.to_f / (num - a).to_f)
       num = num - 1
    end
    print(answer.to_i)
end

countRoot(20,20)