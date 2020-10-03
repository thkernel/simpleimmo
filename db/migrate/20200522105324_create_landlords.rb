class CreateLandlords < ActiveRecord::Migration[5.2]
  def change
    create_table :landlords do |t|
      t.string :uid
      t.references :landlord_type, foreign_key: true
      t.string :civility
      t.string :last_name
      t.string :first_name
      t.datetime :birth_date
      t.string :birth_place
      t.string :id_type
      t.string :id_number
      t.datetime :id_expiration
      t.string :profession
      t.string :nationality
      t.string :company_name
      t.string :address
      t.string :phone
      t.string :city
      t.string :country
      t.string :email
      t.text :about
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
