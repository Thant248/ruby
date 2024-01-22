names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) {
    |e| e = e * 2
}

puts "#{nums}"

digits = Array(0..9)
num = digits.at(7)
puts "#{num}"


