class AddColumnNameToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :subtotal, :float
    add_column :orders, :total, :float
    add_column :orders, :tax, :float
  end
end