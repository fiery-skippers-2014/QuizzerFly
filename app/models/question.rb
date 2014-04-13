class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices

  validates :question_text, presence: true
end
