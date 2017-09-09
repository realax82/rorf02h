str = ''
a = []

print 'first side: '
a[0] = gets.chomp.to_i
print 'second side: '
a[1] = gets.chomp.to_i
print 'third side: '
a[2] = gets.chomp.to_i

hyp = a[0]
eq = 0
b = []

a.each do |s|
  hyp = s if s>hyp

  cur_eq = 0
  b.each do |os|
    cur_eq += 1 if s == os
  end

  eq = cur_eq if cur_eq > eq
end

a.delete(hyp)
if hyp**2 == a.inject(0){|sum, k| sum+k**2}
  res = "Triangle with sides #{a[0]}, #{a[1]}, #{hyp} is right angled (hypothenusa = #{hyp})"
  res += " and this triangle is isosceles (side = #{a[0]})" if eq > 0
else
  res = 'This triangle is not right angled'
end

puts res
