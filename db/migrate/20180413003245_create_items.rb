class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :content
      t.integer :likes
      t.float :price

      t.timestamps
    end
  end
end
