class Job < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|

      t.belongs_to :employer, null: false, foreign_key: true
      t.string :job_title
      t.string :job_description
      t.string :job_location
      t.string :job_category
      t.string :job_level
      t.string :job_skills
      t.string :job_qualifications
      t.integer :salary_highest
      t.integer :salary_lowest
      t.datetime :application_deadline
    end
  end
end
