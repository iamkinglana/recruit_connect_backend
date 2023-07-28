class CreateJobSeekers < ActiveRecord::Migration[7.0]
  def change
    create_table :job_seekers do |t|
      t.string :profile_image
      t.string :name
      t.integer :contact
      t.string :resume_attachment
      t.belongs_to :user, null: false, foreign_key: true

    end
  end
end
