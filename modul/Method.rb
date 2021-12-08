module Modul
  require 'bcrypt'
  puts "Module Method activated"

  def hash_pass(password)
    BCrypt::Password.create(password)
  end


  def verify_hash(password)
    BCrypt::Password.new(password)
  end


  def create_pass(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = hash_pass(user_record[:password])
    end
    list_of_users
  end


  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end

end
