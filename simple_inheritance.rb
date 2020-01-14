# This program demonstrates simple inheritance 

# The '<' symbol is used to denote the inheritance.
# Using super you can call constructor of parent before creating child.
# outside the class, by using the object - you can call only public methods
# super keyword is used to call the parent version of overrided method.
# Instance variables are also inherited with the child class.  

class Parent
    def initialize
        p "Parent:initialize"
        @number = 10;
    end

    private
    def private_method
        p "Parent:private"
    end


    protected
    def protected_method
        p "Parent:protected"
    end

    public
    def public_method
        p "Parent:public"
    end
end

class Child < Parent 
    def initialize
        super
        p "Child: initialize"
        #@number = 20
    end

    private
    def private_method
        super
        p "Child :private"
    end


    protected
    def protected_method
        super
        p "Child :protected"
    end

    public
    def public_method
        super
        p "Child :public"
        p @number
    end

    def call_all
        public_method
        private_method
        protected_method
    end
end

c = Child.new
c.call_all
