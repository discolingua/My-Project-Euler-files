

def addSquares(n)
    sq = 0
    while(n >= 1)
        sq += (n % 10) * (n % 10)
        n /= 10
        n = n.to_i
    end
    return sq
end

count = 1
t89 = 0

while count < 10000000
n = count
squares = 0
    # print "#{count} -> "
    until (squares == 1) || (squares == 89) do
        squares = addSquares(n)
        n = squares
        # print "#{n} -> "
    end
    # puts
    if squares == 89
        t89 += 1
    end
    count += 1
end
puts "89 = #{t89}"
