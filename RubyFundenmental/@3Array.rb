#array
arr = ["食べました","お元気ですか","つきがきれい","日本語","できたい","ily"];

arr.each do |i|
  puts i ,"\n"
end

#key value array
color = arr1 = {"red" => 12, "blue" => 13, "green" => 14};

color.each do |key, value|
    puts "#{key} is #{value}";
end

#range array
 n = 15;
  z = 20
(n..z).each do |i|
  puts i;
end
