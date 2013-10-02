a = []

for i in 2..100
    for j in 2..100
        a << i ** j
    end
end

puts "#{a.uniq.length}"
