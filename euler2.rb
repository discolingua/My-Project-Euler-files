i = 1
j = 1
k = 0
total = 0

while k <= 1000000
  k = i + j
  if (k <= 1000000) and (k.modulo(2) == 0)
    puts k.to_s
    total += k
  end
  i = j
  j = k
end
puts "total = " + total.to_s
