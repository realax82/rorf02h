print "Name: "
nm = gets.chomp.downcase.capitalize
print "Height: "
h = gets.chomp.to_i

w = h - 110
res = ''
if w < 0
  res = 'Already optimal'
else
  res = "#{nm}, your optimal weight is #{w}"
end

puts res
