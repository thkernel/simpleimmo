class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :building_id
      t.references :landlord, foreign_key: true
      t.references :property_type, foreign_key: true
      t.string :reference
      t.string :description
      t.integer :pieces_number
      t.integer :room_number
      t.string :bath_room
      t.float :rent_excluding_tax
      t.string :address
      t.references :city, foreign_key: true
      t.string :neighborhood
      t.string :street
      t.string :door
      t.float :surface
      t.float :value
      t.text :about
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
