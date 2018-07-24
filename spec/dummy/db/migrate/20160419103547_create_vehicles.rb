class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :wheels_count
      t.string :name
      t.string :make
      t.string :long_field

      t.timestamps

      t.index [:make, :name], unique: true
      t.index 'md5(long_field)', unique: true
    end
  end
end
