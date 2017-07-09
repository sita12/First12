class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :title
      t.float :amount
      t.date :date
      t.timestamps null: false
    end
  end
end
