i = 12;

#if else statement
  if i > 10
    puts i;
  else
    puts "I dont know Number"
  end

  #unless statement
  #Executes code if conditional is false. If the conditional is true, code specified in the else clause is executed.
  x = 1
  unless x>=2
    puts "x is less than 2"
  else
    puts "x is greater than 2"
  end

  #case statement == switch case

  $age = 25
  case $age
  when 0..2
    puts "baby"
    
  when 3..6
    puts "little child"
  when 7..12
    puts "child"
  when 13..18
    puts "youth" 
  else 
    puts "adult"
    
  end

