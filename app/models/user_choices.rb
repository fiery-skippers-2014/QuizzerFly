class UserChoices < ActiveRecord::Base
  belongs_to :user
  belongs_to :choice
end
