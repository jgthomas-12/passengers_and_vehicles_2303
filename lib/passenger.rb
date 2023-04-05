class Passenger
  attr_reader :name, 
              :age,
              :driver
                
  def initialize(details)
    @name = details["name"]
    @age = details["age"]
    @driver = false

  end

  def adult?
    return true if @age >= 18
    false

  end

  def drive
    return @driver = true if @age >= 16
    "Sorry, you're not old enought to drive!"
  end

  def driver?
    @driver
  end



end