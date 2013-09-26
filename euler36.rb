i = 1
total = 0

while i < 1000000
    b = i.to_s(2)
    if (i.to_s == i.to_s.reverse) && (b == b.reverse)
        total += i
    end
    i += 2
end
puts total.to_s
