# Modules

# Rules to define module: 
#   object of module can not be created.
#   Modules are used as namespaces and mixins.
#   All classes are modules but not all modules are classes.
#   classes can use namespace but can not use mixins.
#   The name of the module must start with a capital letter.

# Extend
#   you can access module methods as if they are class methods.
#   If the method with the same name is defined in the class then the method defined in the class will execute;
#   Because ruby will first search the class for method.
#   If multiple modules are extended then the last written extended module will be the executed.
#   Why the super works even if not in ancestor chain & no args? 
#   --> Its the feature of ruby & as we are extending, it becomes part of it.

module CircleParameters
    def diameter(radius)
        p "CircleParameter2:diameter #{self.class.ancestors} #{radius}"
    end
end

module CircleParameters2
    def diameter(radius)
        p "CircleParameter2:diameter"
    end
end

class Circle
    extend CircleParameters
    extend CircleParameters2

    def self.diameter(radius)
        super
        p "Circle:diameter method #{self.class.ancestors}"
    end
end

#c = Circle.new
#p "Ancestor chain for circle is : #{c.class.ancestors}"
#p "Ancestor chain for CircleParameters is : #{CircleParameters.ancestors}"

Circle.diameter(25)

# o/p -->
# "CircleParameter2:diameter"
# "Circle:diameter method [Class, Module, Object, Kernel, BasicObject]"
