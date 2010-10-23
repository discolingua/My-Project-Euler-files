total = 0

for i in 1..1000
  total += i ** i
end

puts total.to_s[total.to_s.length-10,10]
