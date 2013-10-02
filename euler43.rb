def checkPrimes(t)
    if t[1..3].to_i % 2 != 0
        return false
    end
    if t[2..4].to_i % 3 != 0
        return false
    end
    if t[3..5].to_i % 5 != 0
         return false
     end
    if t[4..6].to_i % 7 != 0
        return false
    end
    if t[5..7].to_i % 11 != 0
         return false
     end
    if t[6..8].to_i % 13 != 0
        return false
    end
    if t[7..9].to_i % 17 != 0
        return false
    end
    return true
end

a = "0123456789"

l = (a.length)-1
maxVal = a[l]
perm = 1
swap = 0
total = 0

while perm <= (1..10).inject(:*)

    if checkPrimes(a)
        total += a.to_i
        puts "#{a} #{total}"
    end

    # puts "#{a} #{perm}"
    i = l-1
    until a[i] < a[i+1]
        # find the 'first character', the 
        # rightmost character which is
        # smaller than the next character
        i -= 1
    end

    ceilVal = maxVal
    for j in i+1..l
        # find the 'ceiling', the smallest character
        # to the right of the 'first character' which
        # is greater than 'first character'
        if (a[j] <= ceilVal) && (a[j] > a[i])
            ceilVal = a[j]
            ceilIndex = j
        end
    end

    # swap 'first character' with 'ceiling'
    swap = a[ceilIndex]
    a[ceilIndex]=a[i]
    a[i]=swap

    # sort the rest of the string after the index
    # of 'first character'

    a1 = a[0..i]
    a2 = a[i+1..l]
    a = a1 + a2.chars.sort.join


    perm += 1
end
puts "TOTAL: #{total}"

