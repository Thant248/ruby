#yield statement

def test
    puts "You are in the method"
    yield
    puts "You are again in the method"
    yield
end
test{
    puts "You are in block state"
}

def test1 
    yield 5
    puts "You are in the Method"
    yield 100
end

test1{
    |i| puts "My age is #{i}"
}

def test2(&block)
    block.call 
end
test2 {puts "Hello World"}

#Every Ruby source file can declare blocks of code to be run as the file is being loaded 
#(the BEGIN blocks) and after the program has finished executing (the END blocks).

BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}
   # MAIN block code 
puts "MAIN code block"

