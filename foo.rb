for foo in 0..10
    for bar in 0..10
        fb = 0
        fb += foo
        fb += bar * 10
        puts fb.to_s + " "
    end
end
