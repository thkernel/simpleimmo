class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :property_id
      t.references :lease, foreign_key: true
      t.string :expense_type
      t.string :beneficiary
      #t.datetime :start_date
      #t.datetime :end_date
      t.string :payment_method
      t.float :amount
      t.float :received_amount
      t.integer :tax_id
      t.float :total_amount
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
