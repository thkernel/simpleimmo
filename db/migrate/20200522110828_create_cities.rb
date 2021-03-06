class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :uid
      t.string :name
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
