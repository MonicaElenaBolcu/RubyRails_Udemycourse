require_relative 'Method.rb' #daca sunt in acelasi directory

#sau daca nu sunt in acelasi directory
#$LOAD_PATH << "."
#require 'METHOD'
users = [
          { username: "moni", password: "password1" },
          { username: "vali", password: "password2" },
          { username: "printi", password: "password3" },
          { username: "pui", password: "password4" },
          { username: "printipui", password: "password5" }
        ]

hashed_users = Modul.create_pass(users)
puts hashed_users
