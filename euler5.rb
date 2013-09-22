bignum = 2560
i = 3

while i <= 20
    if bignum % i != 0
        i = 3
        bignum += 20
    else
        i += 1
    end
end
puts bignum.to_s
