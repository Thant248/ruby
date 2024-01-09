puts "Body Mass Index (BMI) categories"

puts "- Serves Thiness  < 16"
puts "- Moderate Thiness 16-17"
puts '- Mild Thiness 17-18.5'
puts "- Normal 18 - 25"
puts "- Overweight 25-30"
puts "- Obese Class I"
puts "- Obese Class II"
puts "- Obese Class III"
puts 

puts "Body Mass Index (BMI) Calculator"
print "Height(cm):"
height = gets.to_f
print "Weight(kg):"
weight = gets.to_f
bmi = weight / ( height/100) ** 2

puts "BMI - #{bmi}"  #i am using interpolation system


fh = File.new("tem.out", "w");
fh.puts bmi
fh.close