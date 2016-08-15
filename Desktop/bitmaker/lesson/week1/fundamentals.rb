# if statements

# if some condition is true
# then lets do something awesome
# otherwise don't

count = 9

if count == 10
  #run this code only if count = 10
  puts "Equal to ten"
end

#alternatives to the above
puts "Equal to ten" if count == 10
puts "Equal to ten" unless count !=10
# if / else statement
if count != 10
  #run this code only if count != 10
  puts "NOT equal to ten"
else
  #run this code if the above condition is false
  puts "Equal to ten"
end

# if / elsif / else
if count > 10
  puts "Greater than 10"
elsif count < 10
  puts "Less than 10"
else
  puts "Equal to 10"
end
# ternary operator
#if count > 5
    #cats_or_dogs ="cats"
  #else
    #cats_or_dogs = "dogs"
  #end

cats_or_dogs = (count > 5) ? "cats" : "dogs"
# this says if count is greater than 5 assign cats or if less than assign dogs
puts cats_or_dogs


# case / when statement
fruit = "Banana"

case fruit
when "Apple" then
  puts "Apple"
when "Orange"
  puts "Orange"
when "Banana"
  puts "It's a Banana"
else
  puts "None of the above"
end

case fruit
when "Banana" then puts "Its a Banana"
when "Apple" then puts "Its a Apple"
when "Orange" then puts "Orange"
else
  puts "None of the above"
end



# Looping & iteration

# while Loop
times = 0

while times < 5
  puts "this is loop number #{times}"
  # times = times + 1
  times += 1
end

# while true
#  puts "this will run forever (infinite Loop)"
# end

while true
puts "#{times}"
  times += 1

  if times > 100
    break
  end
end


# until condition
#
# end

10.times do
  puts "chunky bacon"
end

10.times do |number|
  puts "we're on #{number}"
end
