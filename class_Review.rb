<<<<<<< HEAD
class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password # users hash keeps usernames as keys with each username’s password as the associated value.
    @files = {} #creates an empty hash
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users #class method to get users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

=======
class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password # users hash keeps usernames as keys with each username’s password as the associated value.
    @files = {} #creates an empty hash
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users #class method to get users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

>>>>>>> 2c19fbd39f167a22f4c7b49832a81e50cde549fa
puts "Users: #{Machine.get_users}"