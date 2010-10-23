bignum = 1

for i in 1..100
  bignum = bignum * i
end

total = 0

l = bignum.to_s.length

for i in 0..l-1
 total += bignum.to_s[i,1].to_i
end

puts total.to_s
