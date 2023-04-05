class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(details)
    @name = details[:name]
    @admission_price = details[:admission_price]
    @vehicles = []
  end
end