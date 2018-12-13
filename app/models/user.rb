class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates_presence_of :name, :email, :password

  def self.authenticate(email, password)

  end
end
