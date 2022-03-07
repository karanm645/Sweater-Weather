class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :email, :password_digest, presence: true
  has_secure_password
  has_secure_token :auth_token
end