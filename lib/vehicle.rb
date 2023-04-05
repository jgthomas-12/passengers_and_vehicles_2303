class Vehicle 
  attr_reader :year,
              :make,
              :model,
              :passengers,
              :speeding

  def initialize(year, make, model)
    # require 'pry'; binding.pry
    @year = year
    @make = make
    @model = model 
    @passengers = []
    @speeding = false

  end


  def speed 
    @speeding = true
  end

  def speeding?
    return true if @speeding == true
    false

  end
end