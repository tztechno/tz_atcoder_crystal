abc109_a.cr
#############################################
#############################################
a, b= gets.not_nil!.split.map(&.to_i)

if a.even? || b.even?
    puts "No"
else
    puts "Yes"
end
#############################################
a, b = read_line.split.map(&.to_i)
if a == 2 || b == 2
    puts "No"
else
    puts "Yes"
end
#############################################
a,b = read_line.split.map(&.to_i)
c = (a*b)%2
if c == 1
    puts "Yes"
else 
    puts "No"    
end
#############################################
[python]
a,b=map(int,input().split())
if (a*b)%2==1:
    print('Yes')
else:
    print('No')
#############################################
