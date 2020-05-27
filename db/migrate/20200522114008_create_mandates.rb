class CreateMandates < ActiveRecord::Migration[5.2]
  def change
    create_table :mandates do |t|
      t.references :landlord, foreign_key: true
      t.integer :building_id
      t.integer :property_id
      t.string :usage_type
      t.datetime :start_date
      t.datetime :end_date
      t.string :duration
      t.string :id_type
      t.string :id_number
      t.string :periodicity
      t.float :property_value
      t.float :commission_rate
      t.float :commission_amount
      t.float :vat_rate
      t.float :net_amount
      t.string :status
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end