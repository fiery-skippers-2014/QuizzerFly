# -----------CREATE SURVEY


# Not necessary since we have create survey partial on profile
# Send to create_survey form
post '/surveys/new' do
 @survey = Survey.create(
  title: params[:title],
  user_id: current_user.id,
  description: params[:description])
 @survey.save
 puts params
 @survey.build(params)
  redirect "/"
end


# # Create survey from create_survey form
# post '/surveys/create' do
#   @survey = Survey.create(params)
#   redirect "/surveys/#{@survey.id}"
# end




# Show survey by survey id
get "/surveys/:survey_id" do
  @survey = Survey.find(params[:survey_id])
  @user = User.find(@survey.user_id)
  erb :'/survey/show_one'
end





# Allow a user to delete their own survey then return to their profile
get '/surveys/:survey_id/delete' do
  @survey = Survey.find(params[:survey_id])
  @user = User.find(@survey.user_id)
  @survey.destroy if current_user.id == @user.id
  redirect "/users/#{@user.id}"
end



# GO TO SURVEY FORM TO TAKE SURVEY
get '/surveys/:survey_id/result/new' do
  @survey = Survey.find(params[:survey_id])
  erb :'completed_surveys/take_survey'
end
# Create FILLED OUT SURVEY
post '/surveys/:survey_id/result' do
  @survey = Survey.find(params[:survey_id])
  erb :'/survey/show_one'
end