class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, 
             presence: true,
             format: { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }

  validates :password_hash,
             presence: true,
             length: { minimum: 6 }

  before_save { self.email = email.downcase }

  has_many :surveys
  has_many :results
  has_many :completed_surveys

  include Gravtastic

  is_gravtastic!
end
