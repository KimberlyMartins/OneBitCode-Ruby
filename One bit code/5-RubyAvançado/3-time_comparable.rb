birthday = Time.new(2005, 1 , 18)
summer = Time.new(2020, 5, 21)
winter = Time.new(2022, 3, 10)
independence_day = Time.new(1822, 9 , 7)

puts birthday # 2005-01-18 00:00:00 -0300

=begin
                     Comparar e Atribuir 
= atribuir 
 == comparar

=end 
puts birthday > independence_day # true
puts summer >= winter # false
puts independence_day > winter # false

puts birthday == winter # false
puts summer.between?(birthday, winter) # true