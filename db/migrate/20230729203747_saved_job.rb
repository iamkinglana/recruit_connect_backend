class SavedJob < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_jobs do |t|

      t.boolean :saved_job
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :job_seeker, null: false, foreign_key: true

    end
  end
end
