class CreateUserTable < ActiveRecord::Migration[7.0]
  def change
    create_table :user do |t|
      t.string :email
      t.string :password_digest
      t.string :api_key

      t.timestamps
    end
  end
end
