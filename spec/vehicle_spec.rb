require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
  before(:each) do

    @vehicle = Vehicle.new("2001", "Honda", "Civic")    
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
    
  end

  describe "initialize" do 

    it "exists" do 
      expect(@vehicle).to be_a(Vehicle)
    end

    it "has readable attributes" do 

      expect(@vehicle.year).to eq("2001")
      
      expect(@vehicle.make).to eq("Honda")
      
      expect(@vehicle.model).to eq("Civic")

      expect(@vehicle.passengers).to eq([])
      
      expect(@vehicle.speeding).to be(false)

    end
  end

  describe "other methods" do 

    it "#speeding?" do
    
    expect(@vehicle.speeding?).to be(false)
    
    @vehicle.speed
    
    expect(@vehicle.speeding?).to be(true)

  end

    it "#add_passengers" do 

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      
      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])

    end
    
    it "#num_adults" do

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
    
      expect(@vehicle.num_adults).to eq(2)
    
    
    end 
  end
end