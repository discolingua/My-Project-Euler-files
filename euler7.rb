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

count = 1
total = 0


until total == 10001
  count += 1
  if test_prime(count)
    total += 1
    puts "prime " + total.to_s + " is " + count.to_s
  end
end

