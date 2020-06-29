class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.integer :property_id
      t.references :lease, foreign_key: true
      t.string :income_type
      t.string :payer
      t.datetime :start_date
      t.datetime :end_date
      t.string :payment_method
      t.float :amount
      t.float :received_amount
      t.integer :tax_id
      t.float :total_amount
      t.string :receipt_number
      t.integer :month
      t.integer :year
      t.string :status
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
