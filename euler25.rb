i = 1
j = 0
k = 0
ln = 0

term = 0

until ln == 1000
  k = i + j
  i = j
  j = k
  ln = k.to_s.length
  term += 1
  puts "term " + term.to_s + " = " + ln.to_s + " digits\n"
end

