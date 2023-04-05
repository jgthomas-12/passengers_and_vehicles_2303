class Passenger
  attr_reader :name, 
              :age,
              :driver
                
  def initialize(details)
    # require 'pry'; binding.pry
    @name = details["name"]
    @age = details["age"]
    @driver = false

  end

  def adult?
    return true if @age >= 18
    false
    
  end




end