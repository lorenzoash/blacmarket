class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :item, foreign_key: true
      t.float :unit_price 
      t.float :total_price

      t.timestamps
    end
  end
end
