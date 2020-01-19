#Program to build an Authentication app.
 
#Configurational params here
NO_OF_ATTEMPTS = 3;
attempts = 1;
 
users = [
         { username: "pranav", password:"waikar"},
         { username: "kajal",  password: "mohite"}
      ]
 
#welcome msg method
def print_welcome_msg
 puts "!!!Welcome to Authenticator App!!!"
 35.times { print "-" }
 puts
end
 
#Check the correct combination vai iterating through the hash - users
def authenticate_user(username,password,list_of_users)
 list_of_users.each do |user_record|
   if user_record[:username] == username && user_record[:password] == password
     return user_record
   end
 end
 return "Incorrect combination!!"
end
 
 
#Executions starts here
print_welcome_msg
while attempts <= NO_OF_ATTEMPTS
 # Accepting input from user here
 print "Enter username:"
 accepted_username = gets.chomp
 
 print "Enter password:"
 accepted_password = gets.chomp
 
 #performing authentication method
 auth_status = authenticate_user(accepted_username,accepted_password,users)
 puts auth_status
 
 # Break the loop if user wishes to exit
 puts "Print q to quit OR any other key to continue:"
 input = gets.chomp.downcase
 break if input == "q"
 
 # Increment value for each attempt
 attempts +=1
end
puts "Maximum number of attempts reached! EXITING..."
 
 
