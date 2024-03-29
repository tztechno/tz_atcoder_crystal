//abc086_a.cr
################################
################################
s = gets.to_s
puts s == "ABC" ? "ARC" : "ABC"
################################
a, b = gets.not_nil!.split.map(&.to_i)
if a * b % 2 == 0
  puts "Even"
else
  puts "Odd"
end
################################
a, b = read_line.split.map(&.to_i)
c = a*b
if(c % 2 == 0) 
  puts "Even"
else
  puts "Odd"
################################
class Problem
  property :a, :b, :c, :n, :m, :k, :h, :w, :x, :y, :s, :t
  def initialize(@a : Array(Int32))
  end
  def solve
    (a[0] * a[1]).odd?
  end
  def show(ans)
    puts ans ? "Odd" : "Even"
  end
end
a = gets.to_s.split.map(&.to_i)
Problem.new(a).try do |b|
  b.show(b.solve)
end
################################
if input = gets
  arr = input.chomp.split
end
if arr && arr[0] && arr[1]
  a = arr[1].to_i
  b = arr[0].to_i
  if (a*b)%2 == 0
    puts "Even"
  else
    puts "Odd"
  end
end
################################
a, b = read_line.split.map(&.to_i)
c = a*b
puts ["Even","Odd"][c%2]
################################
