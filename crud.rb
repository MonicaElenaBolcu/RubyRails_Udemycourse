require 'bcrypt'

users = [
          { username: "moni", password: "password1" },
          { username: "vali", password: "password2" },
          { username: "printi", password: "password3" },
          { username: "pui", password: "password4" },
          { username: "printipui", password: "password5" }
        ]

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

new_pass = create_pass(users)
puts new_pass

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash(user_record[:password]) == password
      return user_record
    end
  end
  "Credentials were not correct"
end
puts
puts authenticate_user("moni", "password4", new_pass)

#new_password = hash_pass("password1")
#puts new_password == "password2"
