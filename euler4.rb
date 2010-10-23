bigpal = 0

for i in 100..999
  for j in 100..999
    k = i * j
    if ( k.to_s == k.to_s.reverse ) and ( k > bigpal )
      bigpal = k
    end
  end
end
puts bigpal.to_s
