n = 20
print (1..(2 * n)).inject(:*) / (1..n).inject(:*) ** 2

