class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :showtime_id
      t.integer :customer_id
      t.integer :tickets_sold
    end
  end
end
