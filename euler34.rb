count = 3
fact = 0
total = 0


while count < 2540161
    fact = 0
    n = count.to_s
    for i in 0..n.length-1
        j = n[i].chr.to_i
        if j == 0
            fact += 1
        else
            fact += (1..j).inject(:*)
        end
    end
    if fact == count
        total += count
        puts "#{fact}  (#{total}) *****************\n"
    end
    count += 1
end
