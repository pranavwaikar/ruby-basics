module PasswordManager
    require 'bcrypt'

    def create_hash_digest(password_string)
      BCrypt::Password.create(password_string)
    end

    def verify_hash_digest(hased_password)
      BCrypt::Password.new(hased_password)
    end
end