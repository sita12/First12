class Newmig < ActiveRecord::Migration[5.1]
  def change
    rename_column :accounts, :Title, :title
    rename_column :accounts, :Amount, :amount
    rename_column :accounts, :Date, :date
  end
end
