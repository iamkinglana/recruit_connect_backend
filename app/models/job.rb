class Job < ApplicationRecord
  belongs_to :employer
  # belongs_to :saved_jobs
  has_many :applications
  has_many :saved_jobs, dependent: :destroy
end
