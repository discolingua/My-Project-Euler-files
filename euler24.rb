# general lexicographic permutation solver
# "puts [0,1,2,3,4,5,6,7,8,9].permutation.to_a.sort[999999].join" also works

a = "0123456789"
l = (a.length)-1
maxVal = a[l]
perm = 1
swap = 0

while perm <= 1000000
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
puts "#{a} #{perm}"
