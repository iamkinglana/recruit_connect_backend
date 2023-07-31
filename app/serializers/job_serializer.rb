class JobSerializer < ActiveModel::Serializer
  attributes :id, :job_title, :job_description, :job_location, :job_category, :job_level, :job_skills, :job_qualifications, :salary_highest, :salary_lowest, :application_deadline

  belongs_to :employer
  # belongs_to :saved_jobs
  has_many :applications
  has_many :saved_jobs, dependent: :destroy

end
