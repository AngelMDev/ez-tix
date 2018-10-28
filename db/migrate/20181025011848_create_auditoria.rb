class CreateAuditoria < ActiveRecord::Migration[5.1]
  def change
    create_table :auditoria do |t|
      t.string :name
      t.integer :capacity
      t.timestamps
    end
  end
end
