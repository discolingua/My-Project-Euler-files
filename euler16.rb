bignum = 2 ** 1000
total = 0

l = bignum.to_s.length

for i in 0..l-1
 total += bignum.to_s[i,1].to_i
end

puts total.to_s
