# Modules

# Rules to define module: 
#   object of module can not be created.
#   Modules are used as namespaces and mixins.
#   All classes are modules but not all modules are classes.
#   classes can use namespace but can not use mixins.
#   The name of the module must start with a capital letter.

# Prepend
#   The prepend will place the module as its child in ancestor chain.
#   you can access module methods as if they are instance methods.
#   If the method with the same name is defined in the class then the method defined in the module will execute;
#   Because ruby will first search the module for method as its the last in chain.
#   If multiple modules are prepended then the last written prepended module will be the executed.
#   Why the super works evenn without arguments? ????????

module CircleParameters
    def diameter(radius)
        p radius*2
    end
end

module CircleParameters2
    def diameter(radius)
        super
        p radius
    end
end

class Circle
    prepend CircleParameters
    prepend CircleParameters2

    def diameter(radius)
        p radius * 1000
    end
end

c = Circle.new
p "Ancestor chain for circle is : #{c.class.ancestors}"
p "Ancestor chain for CircleParameters is : #{CircleParameters.ancestors}"
p "Ancestor chain for CircleParameters is : #{CircleParameters2.ancestors}"

c.diameter(10)

# o/p -->
# "Ancestor chain for circle is : [CircleParameters2, CircleParameters, Circle, Object, Kernel, BasicObject]"
# "Ancestor chain for CircleParameters is : [CircleParameters]"
# "Ancestor chain for CircleParameters is : [CircleParameters2]"
# 20
# 10
