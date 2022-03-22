class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.float :amount
      t.string :status

      t.timestamps
    end
  end
end
