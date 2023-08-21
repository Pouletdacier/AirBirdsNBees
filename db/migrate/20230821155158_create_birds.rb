class CreateBirds < ActiveRecord::Migration[7.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.text :details
      t.string :species
      t.integer :price_per_day
      t.references :birdlord, null: false, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
