class Employer < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.integer :size
      t.string :logo
      t.string :website
      t.string :email
      t.integer :phone
      t.belongs_to :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
