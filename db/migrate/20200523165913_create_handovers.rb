class CreateHandovers < ActiveRecord::Migration[5.2]
  def change
    create_table :handovers do |t|
      t.string :uid
      t.string :handover_type
      t.string :reference
      t.integer :property_id
      t.references :lease, foreign_key: true
      t.string :doors
      t.string :windows
      t.string :wall_cover
      t.string :flooring
      t.string :ventilators
      t.string :air_conditioners
      t.string :light_bulbs
      t.string :faucets
      t.string :showers
      t.string :doorbell
      t.string :ceiling
      t.string :electricity
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
