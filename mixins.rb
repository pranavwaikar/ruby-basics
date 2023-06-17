module  Student
  #protected
  def show_details
    p "Parent:show_details: a private method"
    p "name=#{@name} username=#{@username} password=#{@password}"
  end

  #protected
  def my_foo
    p "Parent:my_foo: a protected method"
  end
end


module StudentHelper
  private
  def show_details
    p "StudentHelper:show_details:a private method"
  end

  def new_private_method
    p "StudentHelper:new_private_method:a private method"
  end

  protected
  def my_foo
    p "StudentHelper:my_foo: a protected method"
  end

  def new_protected_method
    p "StudentHelper:new_protected_method:a protected method"
  end
end

# ComputerStudent is child of Student & StudentHelper

class ComputerStudent 
  include StudentHelper
  include Student

  def initialize(subject)
    @subject = subject
  end 

  def show_details
    #calling private method of parent class
    super
    p "subject=#{@subject}"
  end

  def call_foo
    #calling protected method of parent class
    p "Child:call_foo"
    my_foo
  end

  def call_new_private
    p "Child:call_new_private"
    new_private_method
  end

  def call_new_protected
    p "Child:call_new_protected"
    new_protected_method
  end
end

# EXECUTION

pranav = ComputerStudent.new("TOC")
pranav.show_details
pranav.call_foo
pranav.call_new_private
pranav.call_new_protected
p pranav.class.ancestors


p ComputerStudent.new("TTT").is_a?(Student)

# o/p -->
# "Parent:show_details: a private method"
# "name= username= password="
# "subject=TOC"
# "Child:call_foo"
# "Parent:my_foo: a protected method"
# "Child:call_new_private"
# "StudentHelper:new_private_method:a private method"
# "Child:call_new_protected"
# "StudentHelper:new_protected_method:a protected method"
# [ComputerStudent, Student, StudentHelper, Object, Kernel, BasicObject]
# true
