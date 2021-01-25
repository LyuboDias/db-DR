class AddSlugToDiseases < ActiveRecord::Migration[6.0]
  def change
    add_column :diseases, :slug, :string
    add_index :diseases, :slug, unique: true
  end
end
