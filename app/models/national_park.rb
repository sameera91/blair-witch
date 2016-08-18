class NationalPark < ActiveRecord::Base
  has_many :places_of_interest
end
