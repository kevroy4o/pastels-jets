class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :pastel, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :quantity
      t.date :order_date

      t.timestamps
    end
  end
end
