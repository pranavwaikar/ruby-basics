require_relative 'password_manager'

class WebsiteManager
  extend PasswordManager

  attr_accessor :first_name , :last_name , :email , :password

  def initialize(first_name,last_name,email,password)
    @first_name = first_name
    @last_name  = last_name
    @email = email
    @password = password
  end

  def to_s
    p "first_name = #{@first_name}"
    p "last_name = #{@last_name}"
    p "email = #{@email}"
    p "password = #{@password}"
  end
end

pranav = WebsiteManager.new("pranav","waikar","pranav@pranav.com","password123")
pranav_hased_pass = WebsiteManager.create_hash_digest(pranav.password)
result_password = WebsiteManager.verify_hash_digest(pranav_hased_pass)

p "plain password = #{result_password}"

pranav.to_s

