#local variable declares _
#Instance variable @
#class variable @@
#global variable $

#self − The receiver object of the current method.
#true − Value representing true.
#false − Value representing false.
#nil − Value representing undefined.
#__FILE__ − The name of the current source file.
#__LINE__ − The current line number in the source file.


class Studnet
    @@no_of_studnet = 0
    def initialize (id, name, bachelor)
        @stu_id = id;
        @stu_name = name;
        @stu_bach = bachelor;
    end

    def myself()
        puts "my name is #{@stu_name} and i am from #{@stu_id} . My Graduated as a #{@stu_bach}";
    end
    def total_number_of_customer()
        @@no_of_studnet +=1;
        puts "Number of Studnet are #{@@no_of_studnet}";
    end
end

s1 = Studnet.new(1, "Thant", "BA");
s2 = Studnet.new(1, "Thant", "BA");
s1.myself
s1.total_number_of_customer()
s2.total_number_of_customer()


#global variable can be instantiate in everywhere

$global_variable = "This is Global variable";
class Class1 
    def globalMethod1 
        puts "First Variable: #{$global_variable}", "Global Variable2 : #{$global_variable1}";
    end
    def globalMethod2
        $global_variable1 = "This is Global Variable 2";
        puts "#{$global_variable1}"
    end
end

g1 = Class1.new
g1.globalMethod1
g1.globalMethod2