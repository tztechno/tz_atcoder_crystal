abc097_a.cr
#########################################
#########################################
#########################################
#########################################
class Problem
  property :a, :b, :c, :d, :n, :m, :k, :h, :w, :x, :y, :s, :t

  def initialize(@a : Int32, @b : Int32, @c : Int32, @d : Int32)
  end

  def solve
    ab = talk(a,b)
    ac = talk(a,c)
    bc = talk(b,c)
    ac || (ab && bc)
  end

  def talk(i,j)
    (i - j).abs <= d
  end

  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

a,b,c,d = gets.to_s.split.map(&.to_i)

Problem.new(a,b,c,d).try do |b|
  b.show(b.solve)
end

#########################################
a,b,c,d = gets.to_s.split.map{|t|t.to_i}

if (a-c).abs <= d || ((a-b).abs <= d && (b-c).abs <= d )
  puts "Yes"
else
  puts "No"
end
#########################################
a,b,c,d = gets.to_s.split.map(&.to_i64)

if (c - a).abs <= d
  puts "Yes"
elsif (a - b).abs <= d && (b - c).abs <= d
  puts "Yes"
else
  puts "No"
end
#########################################
