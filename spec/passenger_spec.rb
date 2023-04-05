require 'rspec'
require './lib/passenger'

RSpec.descibe Passenger do

  before(:each) do 

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    # => #<Passenger:0x00007fc1ad88b3c0...>
    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
    # => #<Passenger:0x00007fe0da2cf1b0...>
  end

  describe "initialize" do 
    
    it "exists" do 
      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@taylor.to be_a(Passenger))
    end

    it "has readable attributes" do 

      expect(@charlie.name).to eq("Charlie")
      # => "Charlie"
      
      expect(@charlie.age).to eq(18)
      # => 18
      expect(@charlie.driver).to be(false)
    end
  end
    
  describe "additional methods" do 

    it "can check if person is an adult" do 
      
      expect(@charlie.adult?).to be(true)
      # => true
      
      expect(@taylor.adult?).to be(false)
      # => false
    end
  
    it "can make someone a driver if they're old enough" do 

      expect(charlie.driver?).to be(false)
      # => false
      
      charlie.drive
      
      expect(charlie.driver?).to be(true)
      # => true
      
    end
  end






end