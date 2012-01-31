alias println puts 

# alias // #

# comments
# comments?

=begin
  This is the multiple 
  line comment
=end


=begin
File.open("pageid.txt") do |file| 
  while line = file.gets
    puts line 
  end
end
=end

num = 12
p num.class

num = 12.0
p num.class

num = 'c'
p num.class

num = "Haitao"
p num.class


a = 4
b = "Haitao"
a,b = b,a
p a, b

num = 50
if num<60 then p "failue" end


puts :failure unless num>60

num = 62
puts :failure unless num>60



num>60 ? puts(:succeed) : puts(:failure) 



ss =  "Hello"
dd = ss
ss = "Hello2"

puts ss, dd

ww = 'FFF'
ee = ww
ww = 'FF2'
puts ee, ww

p "Editplus"