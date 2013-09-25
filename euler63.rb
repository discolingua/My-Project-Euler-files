base = 1
exp = 1
tally = 0

while 1
    i = base ** exp
    if i.to_s.length == exp
        tally += 1
        puts "#{base} ^ #{exp} = #{i} (total #{tally})"
    end
    if i.to_s.length > exp
        exp += 1
        base = 1
    else
        base += 1
    end
end
