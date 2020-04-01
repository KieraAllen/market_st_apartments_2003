require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/building'

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_that_it_starts_with_empty_units
    building = Building.new

    assert_equal [], building.units
  end

  def test_it_can_add_unit
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_starts_with_no_renters
    building = Building.new

    assert_equal [], building.renters
  end

  def test_it_has_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Aurora")

    unit1.add_renter(renter1)
    building.add_unit(unit1)

    assert_equal ["Aurora"], building.renters
  end

end
