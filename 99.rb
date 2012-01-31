1.upto(9){ |outside|
  1.upto(outside) {|inside|
     print inside, "*" , outside, "=",inside*outside, "\t"
  }
  puts
}

puts 

for i in 1..9
  for j in 1..i
    print j, "*", i, "=", i*j, "\t"
  end
  puts
  # i =+ 1
end
