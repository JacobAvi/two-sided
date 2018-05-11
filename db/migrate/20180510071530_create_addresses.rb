class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :address
      t.float :latitude
      t.float :longitude
    end
  end
end