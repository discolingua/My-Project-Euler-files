class SparseArray
    attr_reader :hash

    def initialize
        @hash = {}
    end

    def [](key)
        hash[key] ||= {}
    end

    def rows
        hash.length
    end

    alias_method :length, :rows
end




a=[75,
95,64,
17,47,82,
18,35,87,10,
20,4,82,47,65,
19,1,23,75,3,34,
88,2,77,73,7,63,67,
99,65,4,28,6,16,70,92,
41,41,26,56,83,40,80,70,33,
41,48,72,33,47,32,37,16,94,29,
53,71,44,65,25,43,91,52,97,51,14,
70,11,33,28,77,73,17,78,39,68,17,57,
91,71,52,38,17,14,91,43,58,50,27,29,48,
63,66,4,68,89,53,67,30,73,16,69,87,40,31,
4,62,98,27,23,9,70,98,73,93,38,53,60,04,23]

tri = SparseArray.new
maxSum = SparseArray.new

i = 0

def climbTree(tr,tc)
    return if tr.zero?
    maxSum[tr][tc] = tri[tr][tc] +[tri[tr-1][tc-1],tri[tr-1][tc]].max
    climbTree(tr-1,tc)
end


# load triangle matrix
for r in 0..14
    for c in 0..r
        tri[r][c] = a[i]
        i += 1
    end
end

# display triangle
for r in 0..14
    for c in 0..r
        print "#{tri[r][c].to_i} "
        if c == r
            puts "\n"
        end
    end
end


# calculate max path
for r in 0..14
    for c in 0..r
        if r == 0 
            # first row, nothing above it
            maxSum[0][0] = tri[r][c]
            puts "#{r} #{c}  = #{tri[r][c]}  = #{maxSum[r][c]}"
        elsif c == 0 && r > 0
            # first element of row
            maxSum[r][0] = tri[r][0] + tri[r-1][0]
            puts "#{r} #{c}  = #{tri[r][c]}  = #{maxSum[r][c]}"
        elsif r > 0 && c == r
            # last element of row
            maxSum[r][c] = tri[r][c] + tri[r-1][c-1]
            puts "#{r} #{c}  = #{tri[r][c]}  = #{maxSum[r][c]}"
        else
            # climb tree
            tr = r
            while tr > 0
                puts "trying #{tr} #{c}"
                tc1 = tri[tr-1][c-1]
                tc2 = tri[tr-c][c]
                maxSum[tr][c] = tri[tr][c] + [tc1,tc2].max
                tr -= 1
                puts "#{r} #{c}  = #{tri[r][c]}  = #{maxSum[r][c]}"
            end

        end
    end
end


# print max sum tree
for r in 0..14
    for c in 0..r
        print "#{maxSum[r][c]} "
        if c == r
            puts "\n"
        end
    end
end
