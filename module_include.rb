# Modules

# Rules to define module: 
#   object of module can not be created.
#   Modules are used as namespaces and mixins.
#   All classes are modules but not all modules are classes.
#   classes can use namespace but can not use mixins.
#   The name of the module must start with a capital letter.

# Include
#   When you include a module - its inserted betwwen class & its superclass.
#   So, you can access module methods as if they are instance methods.
#   If the method with the same name is defined in the class then the method defined in the class will execute.
#   Ruby will first search the class for method, if not found then go to its parent class.
#   If multiple modules are included then the last written module will be the superclass. 

module CircleParameters
    def diameter(radius)
        radius*2
    end
end

class Circle
    include CircleParameters
end

c = Circle.new
p "Ancestor chain for circle is : #{c.class.ancestors}"
p c.diameter(10)