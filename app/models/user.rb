class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true , uniqueness: true
  validates :password_hash, presence: true

  has_many :surveys
  has_many :results
  has_many :completed_surveys

end
