res = ''

print 'a: '
a = gets.chomp.to_i
print 'b: '
b = gets.chomp.to_i
print 'c: '
c = gets.chomp.to_i

#недоработанный вывод (хорошо работает только средняя часть и то, если первый коэффициент не равен 0) - надо, наверное, по частям
eq = "#{a}x^2 #{b!=0 ? ((b>0 ? '+ ' : '- ') + b.abs.to_s + 'x') : ''} + #{c} = 0"
puts eq

d = b**2 - 4*a*c
res = "D = #{d}."
if d < 0
  res += " No real roots."
else
  res += " Roots: x = #{(Math.sqrt(d)-b)/2.0*a}"
  res += d > 0 ? " and x = #{(- Math.sqrt(d)-b)/2.0*a}." : '.'
end

puts res
