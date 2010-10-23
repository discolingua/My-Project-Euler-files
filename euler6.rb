sumsq = 0
sqsum = 0
total = 0

for i in 1..100
  sumsq += i ** 2
  sqsum += i
end

total = (sqsum ** 2) - sumsq

puts total.to_s
