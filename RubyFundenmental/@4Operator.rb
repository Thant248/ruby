foo = 42

defined? foo;
defined? bar;
defined? $_;
#You call a module method by preceding its name with the
 #module's name and a period, and you reference a constant using the module name and two colons.
#The :: is a unary operator that allows: constants,
#instance methods and class methods defined within a class or 
#module, to be accessed from anywhere outside the class or module.
#Remember in Ruby, classes and methods may be considered constants too.
#You need to just prefix the :: Const_name with an expression that returns the appropriate class or module object.
#If no prefix expression is used, the main Object class is used by default.

#example one
MR_COUNT = 0;

module Foo
    MR_COUNT = 0;
    ::MR_COUNT = 1;
    MR_COUNT = 2;
end

puts MR_COUNT;
puts Foo::MR_COUNT;

#example two

CONST = "out there"

class Inside_one
    CONST = proc {" in there"}
    def where_is_my_CONST
        ::CONST + " inside one"
    end
end
class Inside_two
    CONST =  ' inside two'
    def where_is_my_CONST
        CONST
    end
end

puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST