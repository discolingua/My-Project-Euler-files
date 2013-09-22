a = []
f = File.open("names.txt", "r")
f.readlines.each { |e|
    e.chomp!
    a << e.split(",")
}
f.close
