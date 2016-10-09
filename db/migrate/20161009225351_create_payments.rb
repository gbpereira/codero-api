class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :debt, foreign_key: true
      t.date :payment_date
      t.decimal :value

      t.timestamps
    end
  end
end
