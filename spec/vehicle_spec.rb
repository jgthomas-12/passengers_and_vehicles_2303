require './lib/vehicle'
require './lib/passenger'

RSpec.descibe Vehicle do 
  before(:each) do

    @vehicle = Vehicle.new("2001", "Honda", "Civic")    
    # => #<Vehicle:0x00007fe0da9c63d8...>
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    # => #<Passenger:0x00007fe0da1ec450...>
    
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    # => #<Passenger:0x00007fe0da2730e0...>
    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
    # => #<Passenger:0x00007fe0da2cf1b0...>
    
  end

  describe "initialize" do 

    @vehicle.year
    # => "2001"
    
    @vehicle.make
    # => "Honda"
    
    @vehicle.model
    # => "Civic"
    
  end
  @vehicle.speeding?
  # => false
  
  @vehicle.speed
  
  @vehicle.speeding?
  # => true
  
  @vehicle.passengers
  # => []
  
  # charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
  # # => #<Passenger:0x00007fe0da1ec450...>
  
  # jude = Passenger.new({"name" => "Jude", "age" => 20})    
  # # => #<Passenger:0x00007fe0da2730e0...>
  
  # taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
  # # => #<Passenger:0x00007fe0da2cf1b0...>
  
  @vehicle.add_passenger(@charlie)    
  
  @vehicle.add_passenger(@jude)    
  
  @vehicle.add_passenger(@taylor)    
  
  @vehicle.passengers
  # => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]
  
  @vehicle.num_adults
  # => 2



end