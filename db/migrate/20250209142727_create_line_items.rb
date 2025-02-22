class CreateLineItems < ActiveRecord::Migration[8.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :order, null: true, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
