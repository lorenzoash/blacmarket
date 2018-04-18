class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.boolean :paid
      t.float :subtotal
      t.float :total
      t.float :tax

      t.timestamps
    end
  end
end
