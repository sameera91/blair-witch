json.extract! place_of_interest, :id, :name, :latitude, :longitude, :address, :national_park_id, :created_at, :updated_at
json.url place_of_interest_url(place_of_interest, format: :json)