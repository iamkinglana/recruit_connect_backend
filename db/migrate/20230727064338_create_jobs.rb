class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :jon_id
      t.integer :company_id
      t.string :title
      t.string :description
      t.string :location
      t.string :requirement
      t.datetime :application_deadline
      t.string :experience_level
      t.integer :salary_highest
      t.integer :salary_lowest

    end
  end
end
