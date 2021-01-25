class AddSlugToRespiratoryPaediatrics < ActiveRecord::Migration[6.0]
  def change
    add_column :respiratory_paediatrics, :slug, :string
    add_index :respiratory_paediatrics, :slug, unique: true
  end
end
