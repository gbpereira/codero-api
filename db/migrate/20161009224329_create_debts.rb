class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.references :bill
      t.decimal :value
      t.integer :debtor_id

      t.timestamps
    end
  end
end
