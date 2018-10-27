class CreateShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :showings do |t|
      t.datetime :datetime
      t.integer :seats_taken
      t.integer :auditorium_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
