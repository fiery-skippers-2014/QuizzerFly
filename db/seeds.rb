5.times do
  @this_user = User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password_hash => 'password'

  2.times do
    @this_survey = Survey.create :user_id => @this_user.id, :title => Faker::Commerce.color, :description => Faker::Company.bs

    2.times do
      @this_question = Question.create :survey_id => @this_survey.id, :question_text => Faker::Lorem.sentence

      3.times do
        Choice.create :question_id => @this_question.id, :choice_text => Faker::Lorem.word
      end
    end
  end 
end