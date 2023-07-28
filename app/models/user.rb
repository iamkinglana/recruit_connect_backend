class User < ApplicationRecord
  has_many :applications
  has_many :saved_jobs
end
