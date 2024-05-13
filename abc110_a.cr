abc110_a.cr
###########################################
###########################################
###########################################
abc = gets.not_nil!.split.map(&.to_i)
abc = abc.sort
puts abc[0]+ abc[1] +abc[2]*10
###########################################
a, b, c = read_line.split.map(&.to_i).sort.reverse
puts a * 10 + b + c
###########################################
a,b,c = gets.not_nil!.split.map(&.to_i)
if a >= b && a >= c
  m=a
elsif b >= a && b >= c
  m=b
else
  m=c
end
ans = (a + b + c) + m * 9
puts ans
###########################################
[python]
a,b,c=map(int,input().split())
ans=(a+b+c)+max(a,b,c)*9
print(ans)
###########################################
