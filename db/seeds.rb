# 5.times do
#   @this_user = User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password_hash => 'password'

#   2.times do
#     @this_survey = Survey.create :user_id => @this_user.id, :title => Faker::Commerce.color, :description => Faker::Company.bs

#     5.times do
#       @this_question = Question.create :survey_id => @this_survey.id, :question_text => Faker::Lorem.sentence

#       4.times do
#         Choice.create :question_id => @this_question.id, :choice_text => Faker::Name.first_name
#       end
#     end
#   end
# end