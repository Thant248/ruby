#while loop

$i = 0
$num = 5

while $i <= $num
  puts $i
  $i +=1;
end

#while modifier == do while state
#
puts "============This is begin state=================="
$x = 0
$y = 5
begin
  puts $x
  $x +=1
end while $x < $y
  

#Executes code while conditional is false. 
#An until statement's conditional is separated from code by the reserved word do, a newline, or a semicolon

puts "=========util statement==========="
$f = 0
$total = 5

until $f  >  $total do
    puts("Inside the loop i = #$f" )
    $f +=1;
end

#until modifier

puts "=========until modifier======"

$g = 0
$gay = 5

begin
  puts "if you are gay say #{$g}"
  $g += 1
end until $g > $gay

#for loop

for i in 0..5
  puts "For loop is in #{i}"
end

(0..5).each do |i|
  puts "Each Loop is in #{i}"
end


#then break 

for f in 1..4

  if f > 3 then
    break
  end
  puts "Then Break Situation is #{f}"
end

#umps to the next iteration of the most internal loop. 
#Terminates execution of a block if called within a block (with yield or call returning nil).

for r in 1..3
  if r < 3 then
    next
  end
  puts "Next Loop SItuation is #{r}"
end



#Restarts this iteration of the most internal loop,
#without checking loop condition. Restarts yield or call if called within a block

#for i in 0..5
  #if i < 2 then
  #   puts "Value of local variable is #{i}"
 #    redo
  #end
#end

#the output will be infinite

#retry statement



