class JobSeeker < ApplicationRecord
  has_many :applications
  has_many :saved_jobs
end
