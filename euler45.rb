def ispent(n)
  i = 1
  pn = 0
  while pn <= n
    pn = i*(3*i-1)/2
    if pn == n
      return true
    end
    if pn > n
      return false
    end
    i += 1
  end
end


count = 0

while 1
  count += 1
  hn = count * ( 2 * count - 1)
  if ispent(hn)
    puts hn.to_s + " is pentagonal"
  end
end
