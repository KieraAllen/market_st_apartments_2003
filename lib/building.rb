require './lib/apartment'

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
    units.map do |unit|
      @renters << unit.renter
    end
    @renters
  end
end
