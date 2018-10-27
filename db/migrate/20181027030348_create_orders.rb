class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :credit_card
      t.string :expiration_date
      t.integer :showing_id
    end
  end
end
