# -----------CREATE SURVEY
# Not necessary since we have create survey partial on profile
# Send to create_survey form

post '/surveys/new' do
  # always try to avoid manually adding foreign keys. instead:
  #
  # User.surveys.create()

  @survey = Survey.create(

    title: params[:title],
    user_id: current_user.id,
    description: params[:description]
  )
  @survey.save
  @survey.build(params)
  flash[:success] = "Survey created!"
  redirect "/users/#{@survey.user_id}"

end

# Show survey results by survey id #
get "/surveys/:survey_id" do
  @survey = Survey.find(params[:survey_id])
  # can be handled by @survey.user
  @user = User.find(@survey.user_id)
  if CompletedSurvey.find_by_survey_id(@survey.id)
    @result = Result.find(@user.id)
  end
  erb :'/survey/show_one'
end


# Allow a user to delete their own survey then return to their profile
get '/surveys/:survey_id/delete' do
  @survey = Survey.find(params[:survey_id])
  @user = User.find(@survey.user_id)
  if current_user.id == @user.id
    @survey.destroy
    flash[:success] = "Survey deleted"
    redirect "/users/#{@user.id}"
  else

    flash[:error] = "Survey was not deleted"
  end
end

# GO TO SURVEY FORM TO TAKE SURVEY
get '/surveys/:survey_id/result/new' do
  @survey = Survey.find(params[:survey_id])
  erb :'/completed_surveys/take_survey'
end

# Create FILLED OUT SURVEY
post '/surveys/:survey_id/result' do
  @survey = Survey.find(params[:survey_id])
  erb :'/survey/show_one'
end

# Create Results for each choice User chose in each question
# Create a completed survey for the user
post '/surveys/:survey_id/completed_surveys/new' do
  # this is very brittle. Perhaps just send a different data type to the server?
  selected_choices = params.select { |key| key.to_s.start_with?("question_") }
  selected_choices.each do |question, choice|
    # this can be run as User.choices.create, if choices is simply a join table.
    Result.create({ user_id: session[:user_id], choice_id: choice })
  end
  # This can also be done without explicit reference to the join table,
  # User.surveys.create(). You would have to do some set up.
  CompletedSurvey.create({ user_id: session[:user_id], survey_id: params[:survey_id] })
  flash[:success] = "You just finished a survey!"
  redirect "/surveys/#{params[:survey_id]}"
end

