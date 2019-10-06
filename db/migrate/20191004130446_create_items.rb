class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :discount_price
      t.integer :quantity
      t.timestamps
    end
  end
end
