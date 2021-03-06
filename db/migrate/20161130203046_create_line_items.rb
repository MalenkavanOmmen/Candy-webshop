class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.references :product, foreign_key: true
      t.integer :quantity
      t.decimal :item_price
      t.decimal :total_line_price

      t.timestamps
    end
  end
end
