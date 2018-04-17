class AddColumnNameToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :unit_price, :float
    add_column :line_items, :total_price, :float
  end
end
