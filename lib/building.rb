class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units.push(unit)
  end

  def renters
    unit.renter = units.map do |unit|
      # unit.renter == [renter]
      renters.push(renter)
      end
      @renters
    end
  end
end
