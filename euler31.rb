tally = 0

for p100 in 0..2
    for p50 in 0..4
        for p20 in 0..10
            for p10 in 0..20
                for p5 in 0..40
                    for p2 in 0..100
                        for p1 in 0..200
                            tot = 0
                            tot += p1
                            tot += p2 * 2
                            tot += p5 * 5
                            tot += p10 * 10
                            tot += p20 * 20
                            tot += p50 * 50
                            tot += p100 * 100
                            if (tot == 200)
                                tally += 1
                            end
                            if (tot > 200)
                                break
                            end
                        end
                    end
                end
            end
        end
    end
end

tally += 1   # 200p coin by itself

puts tally.to_s
