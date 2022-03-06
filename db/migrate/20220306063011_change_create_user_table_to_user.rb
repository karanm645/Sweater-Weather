class ChangeCreateUserTableToUser < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_tables, :users
  end
end
