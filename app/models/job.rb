class Job < ApplicationRecord
  belongs_to :company
  has_many :applications
  has_many :saved_jobs
end
