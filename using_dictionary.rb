#program for area code dictionary
city_data = {
  "ahmednagar" => "414001",
  "pune" => "411041",
  "mumbai" => "400100"
 }
  
 def print_welcome_msg
  puts "Welcome to Area code App!!"
  35.times { print "-" }
  puts
 end
  
 def get_city_names(city_records)
  puts "Available cities are: "
  city_records.keys
 end
  
 def find_area_code(city_name,city_records)
  if city_records.include?(city_name)
    return city_records[city_name]
  end
  "not available with system!\n"
 end
  
 #Execution starts here
 print_welcome_msg
  
 loop do
  print "Find code by city name? (y/n): "
  user_choice = gets.chomp.downcase
  break if user_choice != "y"
  
  #print all cities & ask user for city name
  puts get_city_names(city_data)
  print "Enter the name of city:"
  city_name = gets.chomp.downcase
   #find & print area code if exists
  area_code = find_area_code(city_name,city_data)
  puts "The area code for #{city_name} is #{area_code}"
 end
 puts "EXITING..."
 