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

    it "exists" do 
      expect(@vehicle).to be_a(Vehicle)
    end

    it "has readable attribute" do 

      expect(@vehicle.year).to eq("2001")
      # => "2001"
      
      expect(@vehicle.make).to eq("Honda")
      # => "Honda"
      
      expect(@vehicle.model).to eq("Civic")
      # => "Civic"

      expect(@vehicle.passengers).to eq([])
      # => []
      
      expect(@vehicle.speed).to eq(0)
    end
  end

  describe "other methods" do 

    it "#speeding?" do
    
    expect(@vehicle.speeding?).to be(false)
    # => false
    
    @vehicle.speed
    
    expect(@vehicle.speeding?).to be(true)
    # => true
   end

   #add check speed limit method? speed_limit(speed_limit) if speed is over speed limit = speeding
    

    # expect(@vehicle.passengers).to 
    # # => []
    
    # charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    # # => #<Passenger:0x00007fe0da1ec450...>
    
    # jude = Passenger.new({"name" => "Jude", "age" => 20})    
    # # => #<Passenger:0x00007fe0da2730e0...>
    
    # taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
    # # => #<Passenger:0x00007fe0da2cf1b0...>
    
    it "#add_passengers" do 

      @vehicle.add_passenger(@charlie)
      
      @vehicle.add_passenger(@jude)
      
      @vehicle.add_passenger(@taylor)
      
      expect(@vehicle.passengers).to
      # => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]
    end
    
    it "#num_adults" do

    @vehicle.num_adults
    # => 2
  end
    
    
  end

  



end