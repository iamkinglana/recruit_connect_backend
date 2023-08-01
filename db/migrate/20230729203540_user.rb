class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :middle_name
      t.string :email
      t.integer :phone
      t.string :password_digest
    end
  end
end

