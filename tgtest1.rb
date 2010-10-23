# w = weapon lvl
# a = armor lvl

w1 = 4
w2 = 3

a1_init = 30
a2_init = 50

n = 0
win1 = 0
win2 = 0
tie = 0

while (n < 10000)
  a1 = a1_init
  a2 = a2_init
  while (a1 > 0) | (a2 > 0)
    if rand(6) + 1 <= w1
      a2 -= (rand(6) + 1)
    end
    if rand(6) + 1 <= w2
      a1 -= (rand(6) + 1)
    end
  end
  if (a1 > a2)
    win1 += 1
  elsif (a2 > a1)
    win2 += 1
  else
    tie += 1
  end
  n += 1
end
puts "p1 = " + win1.to_s + " p2 = " + win2.to_s + " tie = " + tie.to_s + "\n"
