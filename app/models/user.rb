require 'securerandom'
class User < ApplicationRecord
  before_create :add_api_key
  validates_presence_of :email
  validates_presence_of :password, on: :create
  validates :email, uniqueness: true, presence: true
  validates_confirmation_of :password
  has_secure_password

private
  def add_api_key
    self.api_key = SecureRandom.hex
  end
end
