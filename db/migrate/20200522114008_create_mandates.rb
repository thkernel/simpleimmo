class CreateMandates < ActiveRecord::Migration[5.2]
  def change
    create_table :mandates do |t|
      t.string :uid
      t.references :landlord, foreign_key: true
      t.references :property_type, foreign_key: true
      t.references :building, foreign_key: true
      t.references :property, foreign_key: true
      t.string :usage_type
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :effective_date
      t.string :duration
      t.string :id_type
      t.string :id_number
      t.string :periodicity
      t.float :property_value
      t.float :commission_rate
      t.float :commission_amount
      t.float :property_tax_rate
      t.float :property_tax_amount
      t.float :net_amount
      t.string :status
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
