# Constructors 

# here we are creating 2 constructors - parameterised & default
# 1. we are testing the behaviour whether it overloads?
# 2. can we call constructor method on object?
# 3. is it public or private?
# can we call constructor via code after creating an object?
#   --> yes, you can. but you should not. (see my_foo method)

class Sample
    public
    def initialize
        @num1 = nil
        @b = nil
        p "Hererererere...."
    end

    
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
        p "YOOOO"
    end


    def my_foo
        initialize(10,20)
    end
end

o1= Sample.new(1,1)
o1.my_foo
# 1:
#   As the ruby compiler starts execution form bottom part of the class;
#   if the last written constructor signature matches with the called method then any error will not be thrown.
# 2:
#   The construcors are private methods. you can not call it after object is created.
#   Even if you write public explicitely, it will still be private.
# 3:
#   you nedd to write only one constructor. The overloading of multiple constructor does not work. 
#   As the ruby itself is dynamic its not possible or required.


