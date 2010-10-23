def count_seq(i)
  step = 0
  until i == 1
    step += 1
    if i.modulo(2) == 0
      i = i/2
    else
      i = 3*i+1
    end
  end
  return step
end


big_seq = 0

for num in 500001..999999
  this_seq = count_seq(num)
  if this_seq > big_seq
    puts num.to_s + " takes " + this_seq.to_s + " steps"
    big_seq = this_seq
  end
end
