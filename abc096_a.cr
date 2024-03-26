abc096_a.cr
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
class Problem
  property :a, :b, :c, :n, :m, :k, :h, :w, :x, :y, :s, :t

  def initialize(@a : Int32, @b : Int32)
  end

  def solve
    if a <= b
      return a
    else
      return a - 1
    end
  end

  def show(ans)
    puts ans
  end
end

a,b = gets.to_s.split.map(&.to_i)

Problem.new(a,b).try do |b|
  b.show(b.solve)
end

#########################################
a, b = read_line.split.map(&.to_i)
if      a == 1
    puts 1
elsif   a <= b
    puts a
else
    puts a - 1
end
#########################################
a, b = read_line.split.map(&.to_i)
if a<=b 
    puts a
else 
    puts a-1
end
#########################################
