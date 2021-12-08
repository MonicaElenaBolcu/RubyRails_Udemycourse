users = [
          { username: "moni", password: "password1" },
          { username: "vali", password: "password2" },
          { username: "printi", password: "password3" },
          { username: "pui", password: "password4" },
          { username: "printipui", password: "password5" }
        ]

def auth_user (username, password, users_list)
  users_list.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials were not correct"
end


puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from user and compare password"
puts "If the password is correct, you will get back the user object"

attempts = 1
while attempts < 4

  print "Username: "
  x = gets.chomp
  print "Password: "
  y = gets.chomp

authent = auth_user(x, y, users)
puts authent

  puts "Press n to quit or any other key to continue:"
  input = gets.chomp
  break if input == "n"
attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4
