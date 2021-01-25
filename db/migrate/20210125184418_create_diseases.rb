class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :link
      t.string :image
    end
  end
end
