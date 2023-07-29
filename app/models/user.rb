class User < ApplicationRecord
  has_many :savedjobs, dependent: :destroy
  has_many :applications
  has_many :jobs

  has_secure_password

  validates :username, :password, :role, presence: true
  validates :username, uniqueness: true

