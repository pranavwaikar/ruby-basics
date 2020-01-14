# The class methods and instance methods

# class methods can be defined with the keyword self. 
# They are called directly using class_name.method_name 
# 1.  what happens if you change instance variables via class methods?
#       It deos not produces warning or error. But it does not affect any object.
# 2.  can you change class variable in an instance method?
#       Yes, you can & it takes effect as expected.
# 3.  What if you declear class methods private?
#       class methods are still accessible outside the class.
# 4.  What if instance methods are private?
#       As expected, if instance methods are private then only accessible within the class definition. its not
#       its not accessible via any object

class Website
    @@no_of_visitors = 0

    # constructor
    def initialize(username,password)
        @username = username
        @password = password
    end

    private
        # class method
    def self.resetVisitorCount
        @@no_of_visitors = 0
        p @@no_of_visitors
        @username = "pk" 
        p @username
    end

    public
    # instance methods
    def incrementVisitorCount
        @@no_of_visitors += 1
        p @@no_of_visitors
    end
  
    def print_info
        p @username
        p @password
        @@no_of_visitors += 100
        p @@no_of_visitors
    end

end

obj = Website.new("pkw","pkw")
obj.incrementVisitorCount
obj.incrementVisitorCount
obj2 = Website.new("abc","abc")


Website.resetVisitorCount

obj.print_info
obj2.print_info
