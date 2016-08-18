class CreatePlaceOfInterests < ActiveRecord::Migration
  def change
    create_table :place_of_interests do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :address
      t.references :national_park, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
