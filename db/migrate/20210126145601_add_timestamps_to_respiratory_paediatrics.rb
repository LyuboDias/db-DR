class AddTimestampsToRespiratoryPaediatrics < ActiveRecord::Migration[6.0]
  def change
    add_column :respiratory_paediatrics, :created_at, :datetime
    add_column :respiratory_paediatrics, :updated_at, :datetime
  end
end
