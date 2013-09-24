for a in 1..1000
    for b in 1..1000
        c = Math.sqrt((a ** 2) + (b ** 2))
        if (a + b + c == 1000)
            product = a * b * c
            print "#{a} #{b} #{c} = #{product}\n"
        end
    end
end
