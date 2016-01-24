#!/usr/bin/env ruby

#Two parameters that we are gonna send Ruby 
puts('hello world');
puts 'hello world'

first_name = 'russ'
last_name = 'olsen'
full_name = first_name + ' ' + last_name
POUNDS_PER_KILOGRAM = 2.2
StopToken = 'end'
FACTS =  'Death and taxes'

age = 19

if (age >= 18)
  puts ('you can vote!')
else
  puts (' you cannot vote!')
end

unless (age < 18)
  puts('unless worked')
end

i = 0
while (i < 4)
  puts("i = #{i}")
  i = i+1
end

array = ['first','second','third']
array.each do |x|

  if x == 'second'
    puts('next')
    next
  end
  puts(x)
end

first = 'Mary had'
second = "a little lamb"
puts(first.length)
puts(first.upcase)
puts(first.downcase)
first[0] = 'R'
puts(first)

second_char = first[1]
first[0] = 67
puts(first)
