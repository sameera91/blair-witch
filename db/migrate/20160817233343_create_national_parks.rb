class CreateNationalParks < ActiveRecord::Migration
  def change
    create_table :national_parks do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
