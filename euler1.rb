count = 1
total = 0

while count < 1000
  if (count.modulo(3) == 0 ) or (count.modulo(5) == 0 )
    total += count
  end
  count += 1
end
puts "total = " + total.to_s