class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :email
      t.string :password_digest
      t.string :role
    end
  end
end
