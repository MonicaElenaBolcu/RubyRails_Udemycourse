require 'bcrypt'

class Signup
  attr_accessor :username, :email, :password

  def initialize(username, email, password)
    @username = username
    @email = email
    @password = password
  end

  print "Username: "
  user_input = gets.chomp
  print "Email: "
  user_email = gets.chomp
  print "Password: "
  user_password = gets.chomp

def printing
  puts @username
  puts @email
  puts @password
end

def criptare(password)
  BCrypt::Password.create(password)
end


  user1 = Signup.new(user_input, user_email, user_password)
  #puts "U is #{username} E is #{email} P is #{password}"
  user1.printing
  puts
  parola = user1.criptare(user_password)
  puts parola
end
