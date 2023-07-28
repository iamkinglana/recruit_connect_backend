class CreateSavedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_jobs do |t|
      t.integer :user_id
      t.integer :job_id
    end
  end
end
