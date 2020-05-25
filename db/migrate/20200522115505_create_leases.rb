class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.references :tenant, foreign_key: true
      t.integer :building_id
      t.integer :property_id
      t.string :usage_type
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :effective_date
      t.string :duration
      t.string :id_type
      t.string :id_number
      t.string :periodicity
      t.string :payment_method
      t.integer :payment_date
      t.integer :receipt_date
      t.float :rent_excluding_tax
      t.float :vat_rate
      t.float :net_amount
      t.boolean :vat_paid_by_tenant
      t.float :guarantee_amount
      t.float :avance
      t.boolean :renewable
      t.string :status
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
