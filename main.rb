module PasswordManager
    require 'bcrypt'

    def create_hash_digest(password_string)
        Bcrypt::Password.create(password_string)
    end

    def verify_hash_digest(hased_password)
        Bcrypt::Password.new(hased_password)
    end
end