#program to display polymorphism via method overloading (NOT WORKING)
 
class Test
  def initialize(radius=1,color="red")
    @radius = radius
    @color = color
  end
  
  def SetColor(color)
    @color = color
  end
  
  def SetRadius(radius)
    @radius = radius
  end
  
  def ShowAttributes()
    puts "Radius=#{@radius} and Color=#{@color}"
  end
   def draw(*args)
    case args.size
      when 1
        case args[0].class
          when String
            SetColor(args[0])
            ShowAttributes()
          when FixNum, Integer
            SetRadius()
            ShowAttributes()
        end
      when 2
        case args[0].class
          when String
            SetColor(args[0])
            SetRadius(args[1])
            ShowAttributes()
          when Fixnum,Integer
            SetColor(args[1])
            SetRadius(args[0])
            ShowAttributes()
        end
    end
 end
  
 t = Test.new()
 t.draw("red")
 