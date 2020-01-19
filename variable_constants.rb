#program to display behaviour of different types of variables and constants
 
class Website
  URL = "www.abc.com" #Constants
  @@TotalVisitors = 0 #Class variable
  def initialize(username,password)
    @username = username #Instance variable
    @password = password #Instance variable
  end
  
  def showUsers
    puts "Username= #{@username}"
    puts "Password=  #{@password}"
  end
  
  def incrementVisitor
    @@TotalVisitors +=1
    puts "TotalVisitors = #{@@TotalVisitors}"
  end
  
  def showUrl
    puts "URL= #{URL}"
  end
  
  def addNumbers(num1,num2)
    answer = num1+num2 #Local variable
    puts "Answer = #{answer}"
  end
 end
  
 webObj = Website.new("pkw","1997")
 webObj.showUsers
 webObj.incrementVisitor
  
 webObj2 = Website.new("KM","1997")
 webObj2.showUsers
 webObj.incrementVisitor
  
 webObj.showUrl
 webObj.addNumbers(10,20)
 puts "FILE = #{__FILE__} LINE= #{__LINE__}"
 =begin
  This is a multiline comment.
 =end
 