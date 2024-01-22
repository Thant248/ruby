def test (a1 = "Ruby", a2 = "Perl")
    puts "The Programming Language #{a1}"
    puts "The Programming Language #{a2}"
end

test "Java", "JavaFx"
test

#If more than two expressions are given, 
#the array containing these values will be the return value. If no expression given, nil will be the return value.

def test1

    i =100;
    j = 200;
    k = 300;
    return i, j, k
end

var  = test1
puts var

#Suppose you declare a method that takes two parameters, 
#whenever you call this method, you need to pass two parameters along with it.
#parameter star so akone yae lo tr

def sample (*test)
    puts "The number of parameter are #{test.length}"
    for i in 0..test.length
         puts "The parameter are #{test[i]}"
    end
end

sample "Zoro", "6", "F"
sample "Mac", "Iphone", "iWatch", "MCA"


class Account
    def return_date
        puts "This is Return Date"
    end
    def Account.return_number 
        puts "This is Return Number"
    end
end

a  = Account.new
a.return_date