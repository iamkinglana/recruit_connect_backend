class Application < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      
      t.belongs_to :job, null: false, foreign_key: true
      t.datetime :application_date
      t.string :resume_attachment
      t.string :cover_letter_attachment
      t.string :application_status
      t.belongs_to :job_seeker, null: false, foreign_key: true

    end
  end
end
