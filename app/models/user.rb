class User < ApplicationRecord
  has_many :saved_jobs, dependent: :destroy
  has_many :applications
  has_many :jobs

  has_secure_password

  validates :email, :name, :username, :role, :password, presence: true
  validates :email, uniqueness: true
end
