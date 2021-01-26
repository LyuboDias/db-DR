class AddTimestampsToDiseases < ActiveRecord::Migration[6.0]
  def change
    add_column :diseases, :created_at, :datetime
    add_column :diseases, :updated_at, :datetime
  end
end
