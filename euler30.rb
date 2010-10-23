i = 2
total = 0

while 1
  sum = 0
  numstr = i.to_s
  for k in 1..numstr.length
    sum += numstr[k-1,1].to_i ** 5
  end
  if sum == i
    total += i
    puts i.to_s + " Total = " + total.to_s
  end
  i += 1
end
