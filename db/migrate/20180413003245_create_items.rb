class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :content
      t.integer :likes
      t.float :price
      t.string :title
      t.attachment :image

      t.timestamps
    end
  end
end
