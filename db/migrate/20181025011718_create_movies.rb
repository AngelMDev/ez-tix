class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.string :rating
      t.integer :duration
      t.timestamps
    end
  end
end
