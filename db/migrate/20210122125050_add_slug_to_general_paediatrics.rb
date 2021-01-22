class AddSlugToGeneralPaediatrics < ActiveRecord::Migration[6.0]
  def change
    add_column :general_paediatrics, :slug, :string
    add_index :general_paediatrics, :slug, unique: true
  end
end
