require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do

  before(:each) do 

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
  end

  describe "initialize" do 
    
    it "exists" do 
      expect(@charlie).to be_a(Passenger)
      expect(@taylor).to be_a(Passenger)
    end

    it "has readable attributes" do 

      expect(@charlie.name).to eq("Charlie")
      
      expect(@charlie.age).to eq(18)

      expect(@charlie.driver).to be(false)
    end
  end
    
  describe "additional methods" do 

    it "can check if person is an adult" do 
      
      expect(@charlie.adult?).to be(true)
      
      expect(@taylor.adult?).to be(false)

    end
  
    it "can make someone a driver if they're old enough" do 

      expect(@charlie.driver?).to be(false)
      
      @charlie.drive
      
      expect(@charlie.driver?).to be(true)
      
    end
  end






end