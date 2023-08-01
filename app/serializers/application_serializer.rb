class ApplicationSerializer < ActiveModel::Serializer
  attributes :id ,:application_date , :resume_attachment , :cover_letter_attachment , :application_status

  belongs_to :job_seeker
  belongs_to :job
end
