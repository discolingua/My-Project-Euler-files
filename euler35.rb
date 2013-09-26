tally = 0

def isPrime n
    for d in 2..(Math.sqrt(n))
        if n % d == 0
            return false
        end
    end
    true
end


def checkRotations n
    s = n.to_s
    l = s.length
    if l == 1
        return true
    end
    for j in 1..l
        s1 = s[0].chr
        s2 = s[1..l-1]
        s = s2 + s1
        if isPrime(s.to_i) == false
            return false
        end
    end
    true
end
    


for i in 2..1000000
    if isPrime(i)
        if checkRotations(i)
            puts i.to_s
            tally += 1
        end
    end
end

puts tally.to_s
