class AddSlugToAllergies < ActiveRecord::Migration[6.0]
  def change
    add_column :allergies, :slug, :string
    add_index :allergies, :slug, unique: true
  end
end
