def isBouncy(n)
    len = n.to_s.length
    if len < 3
        return false
    end
    d = 0
    for i in 1..len-1
        if n.to_s[i] > n.to_s[i-1]
            if d == 0
                d = 1  # rising number
            end
            if d == -1 # bouncy
                return true
            end
        end
        if n.to_s[i] < n.to_s[i-1]
            if d == 0
                d = -1 # falling number
            end
            if d == 1 # bouncy
                return true
            end
        end
    end
    return false
end
            

j = 1
p = 0
bc = 0

while 1
    if isBouncy(j)
        bc += 1
        p = bc.to_f / j.to_f * 100
    end
    if p >= 99
        break
    end
    j += 1
end
puts "#{j} is bouncy (#{p}%)"    
