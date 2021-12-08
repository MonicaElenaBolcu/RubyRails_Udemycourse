class User
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  def run
    puts "Hey I'm running"
  end
  def identify_yourself
    puts "Hey I am #{name} and my email is #{email}"
  end
end
nume = User.new("Monica", "bolcu.monica@yahoo.com")

nume.run
nume.identify_yourself # to run this class method you don't need an instance of user
                      # you can directly call the class User
