bigCount = 1
tally = 0

loop = 1
fwd = 1

while bigCount < 10000
    while loop <= 50
        rev = fwd.to_s.reverse.to_i
        count = fwd + rev
        if count == count.to_s.reverse.to_i
            # puts "#{bigCount} (#{loop})  #{fwd} + #{rev} = #{count}"
            break
        else
            fwd = count
            loop += 1
        end
        if loop == 50
            # puts "#{bigCount} is Lychrel"
            tally += 1
        end
    end
    loop = 1
    bigCount += 1
    fwd = bigCount
end
    
puts tally.to_s
