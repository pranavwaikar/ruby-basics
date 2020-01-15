class Student

  attr_accessor = :name , :username , :password
  def initialize(name,username,password)
    @name = name
    @username = username
    @password = password
  end

  private
  def show_details
    p "Parent:show_details: a private method"
    p "name=#{@name} username=#{@username} password=#{@password}"
  end

  protected
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

class ComputerStudent < Student

  include StudentHelper

  def initialize(name,username,password,subject)
    super(name,username,password)
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

#EXECUTION

pranav = ComputerStudent.new("pranav","pkw","p123","TOC")
pranav.show_details
pranav.call_foo
pranav.call_new_private
pranav.call_new_protected
p pranav.class.ancestors