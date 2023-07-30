class Job < ApplicationRecord
  belongs_to :employer
  # belongs_to :saved_jobs
  has_many :applications
end
