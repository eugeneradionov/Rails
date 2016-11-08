class User < ApplicationRecord
  validates :name, :email, presence: true, uniqueness: true
  validates :password, presence: true
  has_secure_password
end
