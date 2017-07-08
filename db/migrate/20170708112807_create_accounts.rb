class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :Title
      t.float :Amount
      t.date :Date
      t.timestamps null: false
    end
  end
end
