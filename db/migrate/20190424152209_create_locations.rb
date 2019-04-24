class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :department
      t.string :district
      t.string :region
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
