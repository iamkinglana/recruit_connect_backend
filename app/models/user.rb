class User < ApplicationRecord
  has_many :saved_jobs, dependent: :destroy
  has_many :applications
  has_many :jobs

  has_secure_password

  validates :email, :role, :first_name, :surname, :middle_name, :email, :phone, :password_digest, presence: true
  validates :email, :phone, uniqueness: true
end
