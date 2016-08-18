# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

national_park = NationalPark.create(name: 'Shenandoah Valley', description: 'The coolest park ever')
place_of_interest1 = PlaceOfInterest.create(name: 'Place 1', latitude: 38.2928, longitude: 78.6796, national_park_id: 1)
place_of_interest2 = PlaceOfInterest.create(name: 'Place 2', latitude: 38.2928, longitude: 78.6797, national_park_id: 1)
place_of_interest3 = PlaceOfInterest.create(name: 'Place 3', latitude: 38.2928, longitude: 78.6795, national_park_id: 1)
place_of_interest4 = PlaceOfInterest.create(name: 'Place 4', latitude: 38.2930, longitude: 78.6798, national_park_id: 1)