class Apartment
  attr_reader :apartment,
              :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms

  def initialize(apartment)
    @number = apartment[:number]
    @monthly_rent = apartment[:monthly_rent]
    @apartment = apartment
  end
end
