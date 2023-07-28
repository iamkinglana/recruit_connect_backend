class Job < ApplicationRecord
  belongs_to :employer
  has_many :applications
  has_many :saved_jobs
end
