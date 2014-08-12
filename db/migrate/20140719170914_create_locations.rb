class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :city
      t.string :state
      t.decimal :lat
      t.decimal :lng
      t.timestamps
    end
  end
end
