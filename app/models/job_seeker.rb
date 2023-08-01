class JobSeeker < ApplicationRecord
  belongs_to :user
  has_many :applications
  has_many :saved_jobs
end
