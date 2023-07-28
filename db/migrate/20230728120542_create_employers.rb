class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|

      t.timestamps
    end
  end
end
