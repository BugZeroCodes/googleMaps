class Destination < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    "#{city}, #{country}"
  end
end
