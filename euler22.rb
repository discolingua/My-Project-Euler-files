a = []
wordVal = 0
bigVal = 0

f = File.open("names.txt", "r")
f.readlines.each { |e|
    e.chomp!
    a = e.split(",")
}
f.close
a = a.sort  # sort array 

for i in 0..a.size-1
    wordVal = 0
    a[i].each_byte { |e| 
        if (e != 34 )
            wordVal += e-64
        end
    }
    bigVal += wordVal * ( i + 1)
end
puts bigVal.to_s + "\n"
