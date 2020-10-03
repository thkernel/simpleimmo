class CreateRentPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :rent_payments do |t|
      t.string :uid
      t.references :income
      t.references :lease, foreign_key: true
      t.integer :month
      t.integer :year
      t.string :status

      t.timestamps
    end
  end
end
