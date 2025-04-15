class CreateTrails < ActiveRecord::Migration[8.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :extension_in_meters
      t.integer :elevation_gain_in_meters
      t.string :city

      t.timestamps
    end
  end
end
