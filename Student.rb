class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize (firstname, lastname, email, username, password)
  @first_name = firstname
  @last_name = lastname
  @email = email
  @username = username
  @password = password
  end

  def to_s
    puts "First Name: #{first_name} Last Name: #{last_name} Email Adress: #{email} Username: #{username}"
  end


moni = Student.new("Moni", "Bolcu", "moni@gmail.com", "moniboni", "parola")
moni.to_s

end
