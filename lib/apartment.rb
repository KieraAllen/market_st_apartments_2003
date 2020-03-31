require './lib/renter'

class Apartment
  attr_reader :apartment,
              :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :renter

  def initialize(apartment)
    @apartment = apartment
    @number = apartment[:number]
    @monthly_rent = apartment[:monthly_rent]
    @bathrooms = apartment[:bathrooms]
    @bedrooms = apartment[:bedrooms]
    @renter = nil
  end
end
