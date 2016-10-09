class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.integer :creator_id
      t.integer :recipient_id
      t.date :due_date
      t.decimal :value
      t.integer :status

      t.timestamps
    end
  end
end
