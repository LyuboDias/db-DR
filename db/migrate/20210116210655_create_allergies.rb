class CreateAllergies < ActiveRecord::Migration[6.0]
  def change
    create_table :allergies do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
