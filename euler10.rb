def test_prime(num)
  if num == 2
    return true
  end
  if num.modulo(2) == 0
    return false
  end
  count = 3
  while count <= Math.sqrt(num)
    if num.modulo(count) == 0
      return false
    end
    count +=2
  end
  return true
end


total = 0

for i in 2..1000000
  if test_prime(i)
    total += i
  end
end
puts "\ntotal is " + total.to_s
