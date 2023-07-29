class JobSeekerSerializer < ActiveModel::Serializer

  attributes :id, :profile_image, :name , :contact, :resume_attachment
  has_many :applications
  has_many :saved_jobs
end
