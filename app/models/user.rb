class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
