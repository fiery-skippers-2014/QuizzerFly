5.times do
  @this_user = User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password_hash => 'password'

  2.times do
    @this_survey = Survey.create :user_id => @this_user.id, :title => Faker::Commerce.color, :description => Faker::Company.bs

    5.times do
      @this_question = Question.create :survey_id => @this_survey.id, :question_text => Faker::Lorem.sentence

      4.times do
        Choice.create :question_id => @this_question.id, :choice_text => Faker::Name.first_name
      end
    end
  end
end

SeededUser.create(:user_name => "Purple Dragon", :user_email => "charlesarcinega@gmail.com", :user_password_hash => "password")

SeededUser.create(:user_name => "Jen", :user_email => "jrygh00@gmail.com", :user_password_hash => "password")

SeededUser.create(:user_name => "Rori", :user_email => "rsm2165@columbia.edu", :user_password_hash => "password")

SeededUser.create(:user_name => "Jonathan", :user_email => "jwrobes@jwrobes.com", :user_password_hash => "password")

SeededUser.create(:user_name => "Ravi", :user_email => "rramphal@gmail.com", :user_password_hash => "password")

SeededUser.create(:user_name => "Erin", :user_email => "ejcummins@gmail.com", :user_password_hash => "password")

