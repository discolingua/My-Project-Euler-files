a = []
total = 0

def countDivisors n
    t = 0
    for d in 1..n/2
        if n % d == 0
            t += d
        end
    end
    return t
end


for i in 1..10000
    a[i] = countDivisors(i)
end


for j in 2..10000
    x = a[j]   
    y = a[x]   
    if (y == j) && (x != j)
        total += j
    end
end

puts "#{total}"
