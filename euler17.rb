total = 0

def count_letters(i)
  numones = [3,3,5,4,4,3,5,5,4]    # one, two, three...
  numteens = [3,6,6,8,8,7,7,9,8,8] # ten, eleven, twelve...
  numtens = [6,6,5,5,5,7,6,6]      # twenty, thirty, forty...
  count = 0
  j = sprintf("%03d", i)
  huns = j[0,1].to_i
  tens = j[1,1].to_i
  ones = j[2,1].to_i

  if huns > 0
    count += numones[huns-1] + 7  # "hundred"
    unless i.modulo(100) == 0
      count += 3   # "and" (:rolleyes:)
    end
  end
  if tens == 1
    count += numteens[ones]
    return count
  end
  if tens > 1
    count += numtens[tens-2]
  end
  if ones > 0
    count += numones[ones-1]
  end
  return count
end

for i in 1..999
  total += count_letters(i)
  puts i.to_s + " = " + count_letters(i).to_s
end
total += 11   # add "one thousand"
puts total.to_i

