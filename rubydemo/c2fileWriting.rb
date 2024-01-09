print "Hello, Please Enter Celcuis";
celcius = gets.to_i;
ferinheit = (celcius * 9 /5) + 35;
puts "Saving reuslt to ouput file 'tem.out'";
fh = File.new("tem.out", "w");
fh.puts ferinheit
fh.close
