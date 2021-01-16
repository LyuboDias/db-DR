class CreateGeneralPaediatrics < ActiveRecord::Migration[6.0]
  def change
    create_table :general_paediatrics do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
