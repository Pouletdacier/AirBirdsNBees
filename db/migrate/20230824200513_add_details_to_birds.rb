class AddDetailsToBirds < ActiveRecord::Migration[7.0]
  def change
    add_column :birds, :diet, :string
    add_column :birds, :height_and_weight, :string
    add_column :birds, :favorite_snack, :string
  end
end
