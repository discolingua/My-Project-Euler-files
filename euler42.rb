a = []
wordVal = 0
tally = 0

def triNum(n)
    i = 1
    j = 0
    while j < n
        j += i
        i += 1
    end
    if j == n
        return true
    else
        return false
    end
end


# read wordlist
f = File.open("words.txt", "r")
f.readlines.each { |e|
    e.chomp!
    a = e.split(",")
}
f.close


for i in 0..a.size-1
    wordVal = 0
    a[i].each_byte { |e| 
        if (e != 34 ) # ignore quotes
            wordVal += e-64
        end
    }
    if triNum(wordVal)
        tally += 1
    end
end

puts "#{tally}"
