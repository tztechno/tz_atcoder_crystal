abc070_b.cr
##############################
[unique usage]
t = [0, [b, d].min - [a, c].max].max
##############################
##############################
##############################
##############################
##############################
include Math
a,b,c,d = gets.to_s.split.map { |v| v.to_i }
ans = max 0, min(b,d) - max(a,c)
pp ans
##############################
a, b, c, d = read_line.split.map(&.to_i)
cnt = Array.new(101, 0)
a.upto(b - 1) { |i| cnt[i] += 1 }
c.upto(d - 1) { |i| cnt[i] += 1 }
puts cnt.count(2)
##############################
a, b, c, d = gets.not_nil!.split.map(&.to_i)
t = [0, [b, d].min - [a, c].max].max
puts t
##############################
include Math
a,b,c,d = gets.not_nil!.split.map(&.to_i)
t = max(min(b,d)-max(a,c),0)
puts t
##############################
