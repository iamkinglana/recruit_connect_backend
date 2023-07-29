class SavedJobSerializer < ActiveModel::Serializer
  attributes :save, :user_id, :job_id

  belongs_to :user
  belongs_to :job
end
