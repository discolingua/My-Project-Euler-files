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


n = 317584931803
limit = Math.sqrt(n)
i = 1

while i <= n
  if n.modulo(i) == 0
    puts i.to_s
    if test_prime(i)
      puts "PRIME"
    end
  end
  i += 1
end
