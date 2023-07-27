class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.integer :application_id
      t.integer :user_id
      t.string :job_id
      t.datetime :application_date
      t.string :resume_attachment
      t.string :cover_letter_attachment
      t.string :application_status

    end
  end
end
