# -----------CREATE SURVEY


# Create survey from create_survey form
get '/surveys/new' do

erb :'survey/create_survey'

#  @survey = Survey.create(params)
  # redirect "/surveys/#{@survey.id}"
end

# Create survey from create_survey form
post '/surveys/new' do
  @survey = Survey.create(params)
  redirect "/surveys/#{@survey.id}"
end




# Show survey by survey id
get "/surveys/:survey_id" do
  @survey = survey.find(params[:survey_id])
  @user = User.find(@survey.user_id)
  erb :'/survey/a_survey'
end






get '/surveys/:survey_id/delete' do
  @survey = survey.find(params[:survey_id])
  @user = User.find(@survey.user_id)
  @survey.destroy
  redirect "/users/#{@user.id}"
end