tally = 0

for p200 in 0..1
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
                                tot += p200 * 200
                                if (tot == 200)
                                    puts p1.to_s + " " + p2.to_s + " " + p5.to_s + " " + p10.to_s + " " + p20.to_s + " " + p50.to_s + " " + p100.to_s + " " + p200.to_s + "\n"
                                    tally += 1
                                    puts tally.to_s + "\n"
                                end
                                if (tot > 200)
                                    break
                                end
                                # puts tot.to_s + " "
                            end
                        end
                    end
                end
            end
        end
    end
end

puts tally.to_s
