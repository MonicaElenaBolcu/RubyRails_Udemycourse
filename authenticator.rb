users = [
          { username: "moni", password: "password1" },
          { username: "vali", password: "password2" },
          { username: "printi", password: "password3" },
          { username: "pui", password: "password4" },
          { username: "printipui", password: "password5" }
        ]

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

if x == "moni" && y == "password1"
  puts users[0]
elsif x == "vali" && y == "password2"
  puts users[1]
elsif x == "printi" && y == "password3"
  puts users[2]
elsif x == "pui" && y == "password4"
  puts users[3]
elsif x == "printipui" && y == "password5"
  puts users[4]
else
  puts "Credentials were not correct"
end

puts "Press n to quit or any other key to continue:"
w = gets.chomp
break if w == "n"
attempts += 1

end






#puts "You have exceeded the number of attempts"
