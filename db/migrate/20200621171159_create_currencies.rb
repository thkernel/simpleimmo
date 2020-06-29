class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.string :iso_code
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
