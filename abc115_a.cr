abc115_a.cr
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
d = read_line.to_i
puts case d
when 25
  "Christmas"
when 24
  "Christmas Eve"
when 23
  "Christmas Eve Eve"
when 22
  "Christmas Eve Eve Eve"
end
##########################################
d = read_line.to_i
puts "Christmas" + " Eve"*(25-d)
##########################################
[python]
D=int(input())
print("Christmas"+" Eve"*(25-D))
##########################################