bignum = 2560
i = 2

while i <= 20
  if bignum % i != 0
    i = 2
    bignum += 10
  else
    i += 1
  end
end
puts bignum.to_s
