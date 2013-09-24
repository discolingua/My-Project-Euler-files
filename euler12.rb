def triNum(n)
    j = 0
    for i in 1..n
        j += i
    end
    return j
end

def countDivisors(n)
    j = 0
    limit = n
    i = 1
    while i < limit
        if n % i == 0
            limit = n / i;
            if (limit != i)
                j += 1
            end
            j += 1
        end
        i += 1
    end
    return j
end

x = 0
bigDiv = 0

while (bigDiv <= 500)
    x += 1
    y = triNum(x)
    bigDiv = countDivisors(y)
end
puts "#{x}   #{y}   #{bigDiv}\n"
