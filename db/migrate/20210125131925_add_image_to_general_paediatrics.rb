class AddImageToGeneralPaediatrics < ActiveRecord::Migration[6.0]
  def change
    add_column :general_paediatrics, :image, :string
  end
end
