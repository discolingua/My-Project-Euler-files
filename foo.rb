def checkPrimes(t)
    if t % 2 != 0
        return false
    end
    if t % 3 != 0
        return false
    end
    return true
end

count = 0

while count < 100
    if checkPrimes(count)
        puts count.to_s
    end
    count += 1
end
