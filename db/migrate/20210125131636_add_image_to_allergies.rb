class AddImageToAllergies < ActiveRecord::Migration[6.0]
  def change
    add_column :allergies, :image, :string
  end
end
