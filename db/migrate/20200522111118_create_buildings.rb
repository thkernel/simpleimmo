class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :uid
      t.references :landlord, foreign_key: true
      t.string :reference
      t.integer :apartment_number
      t.string :address
      t.references :city, foreign_key: true
      t.string :neighborhood
      t.float :surface
      t.float :value
      t.text :about
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
