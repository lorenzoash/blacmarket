class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :subtoal, :subtotal
  end
end
