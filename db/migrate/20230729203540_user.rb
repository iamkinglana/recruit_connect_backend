class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :username
      t.string :password_digest
    end
  end
end


