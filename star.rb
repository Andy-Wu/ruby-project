puts "Please input the number of line in odd : "
line_num = gets.to_i

if line_num.odd?
  avg = line_num / 2 + 1;
  for i in 1..line_num
    space_num = (i - avg).abs
    star_num = line_num - space_num * 2
    print "\t"
    print " " * space_num
    print "*" * star_num
    #print "-" * space_num
    puts
  end
else
  puts "The number of line should be odd"
end
