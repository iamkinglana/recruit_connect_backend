class SavedJobSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :job
end
